--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:19.520634061 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumString5Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:08.580412404 +0200

@@ -5,264 +5,263 @@
@@@[(6, 7), (8, 9), (10, 22), (28, 34), (48, 49), (55, 64), (65, 68), (69, 78), (79, 84), (88, 98), (99, 106), (110, 117), (122, 124), (127, 143), (149, 153), (154, 164), (165, 171), (172, 185), (186, 191), (192, 195), (210, 211), (212, 215), (219, 226), (231, 239), (247, 263), (276, 289), (344, 349), (353, 356), (358, 360), (362, 364), (378, 380), (381, 385), (386, 403)]@@@
+               	movaps	%xmm0, 384(%rsp)
@@@@
-               	movaps	%xmm0, 352(%rsp)
@@@@
-               	movq	%rax, 48(%rsp)
-               	movq	-64(%rax), %rbx
-               	movq	288(%rbx), %rax
-               	movq	%rax, 360(%rsp)
-               	leaq	352(%rsp), %rax
-               	movq	%rax, 288(%rbx)
+               	movq	%rax, 56(%rsp)
+               	movq	-64(%rax), %r14
+               	movq	288(%r14), %rax
+               	movq	%rax, 376(%rsp)
+               	leaq	368(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	je	0x421adb <kfun:#main(){}+0x7b>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	296(%rbx), %rdi
+               	je	0x421cfb <kfun:#main(){}+0x7b>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r14), %rdi
@@@@
+               	movaps	%xmm0, 256(%rsp)
@@@@
-               	movaps	%xmm0, 144(%rsp)
-               	movq	288(%rbx), %rcx
-               	movq	%rcx, 152(%rsp)
-               	leaq	144(%rsp), %rcx
-               	movq	%rcx, 288(%rbx)
+               	movq	288(%r14), %rcx
+               	movq	%rcx, 168(%rsp)
+               	leaq	160(%rsp), %rcx
+               	movq	%rcx, 288(%r14)
@@@@
-               	movq	%rcx, 160(%rsp)
-               	movq	%rax, 56(%rsp)
+               	movq	%rcx, 176(%rsp)
@@@@
-               	movq	%rbx, 40(%rsp)
-               	movq	296(%rbx), %rdi
+               	movq	%rax, 120(%rsp)
+               	movl	48(%rax), %r15d
+               	testl	%r15d, %r15d
+               	js	0x422e27 <kfun:#main(){}+0x11a7>
+               	movq	296(%r14), %rdi
+               	leaq	31(,%r15,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$64, %esi
-               	callq	0x429d60 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a560 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %r13
@@@@
-               	leaq	232395(%rip), %rax      # 0x45a790 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r12)
-               	movl	$5, 24(%r12)
-               	movq	%rcx, 72(%rsp)
-               	movq	%rcx, 176(%rsp)
+               	leaq	233692(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%r13)
+               	movl	%r15d, 24(%r13)
+               	movq	%rcx, 48(%rsp)
+               	movq	%rcx, 192(%rsp)
@@@@
-               	leaq	232503(%rip), %r13      # 0x45a820 <ktypeglobal:kotlin.CharArray#internal>
-               	cmpq	$5, %rbp
-               	je	0x421cb9 <kfun:#main(){}+0x259>
-               	nopw	%cs:(%rax,%rax)
+               	movq	%r14, 64(%rsp)
+               	cmpq	%r15, %rbp
+               	je	0x421edb <kfun:#main(){}+0x25b>
@@@@
-               	je	0x421c0f <kfun:#main(){}+0x1af>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	je	0x421e2f <kfun:#main(){}+0x1af>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	296(%r14), %rdi
@@@@
-               	leaq	16(%rax), %r15
+               	leaq	16(%rax), %r14
@@@@
-               	movq	%r13, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%r15, 184(%rsp)
-               	xorl	%r14d, %r14d
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	je	0x421c93 <kfun:#main(){}+0x233>
-               	nop
-               	movzbl	282897(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	leaq	233727(%rip), %rax      # 0x45af60 <ktypeglobal:kotlin.CharArray#internal>
+               	movq	%rax, 16(%rbx)
+               	movl	$10000, 24(%rbx)        # imm = 0x2710
+               	movq	%r14, 200(%rsp)
+               	xorl	%r12d, %r12d
+               	cmpq	$10000, %r12            # imm = 0x2710
+               	je	0x421eb3 <kfun:#main(){}+0x233>
+               	movzbl	284281(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	%rax, %r14
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r12
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movw	%r14w, 32(%rbx,%r14,2)
-               	addq	$1, %r14
-               	cmpq	$10000, %r14            # imm = 0x2710
-               	jne	0x421c60 <kfun:#main(){}+0x200>
-               	movl	24(%r12), %eax
+               	movw	%r12w, 32(%rbx,%r12,2)
+               	addq	$1, %r12
+               	cmpq	$10000, %r12            # imm = 0x2710
+               	jne	0x421e80 <kfun:#main(){}+0x200>
+               	movl	24(%r13), %eax
@@@@
-               	jae	0x422adc <kfun:#main(){}+0x107c>
-               	movq	16(%r12), %rax
-               	movq	%r15, 32(%r12,%rbp,8)
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
+               	movq	16(%r13), %rax
+               	movq	%r14, 32(%r13,%rbp,8)
@@@@
-               	cmpq	$5, %rbp
-               	jne	0x421c00 <kfun:#main(){}+0x1a0>
-               	movq	56(%rsp), %rax
-               	movq	72(%rsp), %rcx
-               	movq	%rcx, 24(%rax)
-               	movl	48(%rax), %r12d
+               	movq	64(%rsp), %r14
+               	cmpq	%r15, %rbp
+               	jne	0x421e20 <kfun:#main(){}+0x1a0>
+               	movq	120(%rsp), %r13
+               	movq	48(%rsp), %rax
+               	movq	%rax, 24(%r13)
+               	movl	48(%r13), %r12d
@@@@
-               	js	0x422c11 <kfun:#main(){}+0x11b1>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	js	0x422e5d <kfun:#main(){}+0x11dd>
+               	movq	296(%r14), %rdi
@@@@
-               	andq	$-8, %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	leaq	216(%rsp), %r14
@@@@
-               	je	0x421da0 <kfun:#main(){}+0x340>
-               	nopw	%cs:(%rax,%rax)
+               	je	0x421fb0 <kfun:#main(){}+0x330>
@@@@
-               	je	0x421d50 <kfun:#main(){}+0x2f0>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	56(%rsp), %rax
-               	movq	24(%rax), %rax
+               	je	0x421f60 <kfun:#main(){}+0x2e0>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	24(%r13), %rax
@@@@
-               	movq	%rdi, 208(%rsp)
-               	movq	%r14, %rsi
-               	callq	0x41b880 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
-               	movq	%rax, 216(%rsp)
+               	movq	%rdi, 224(%rsp)
+               	leaq	232(%rsp), %rsi
+               	callq	0x41ba20 <kfun:kotlin.collections#joinToString__at__kotlin.CharArray(kotlin.CharSequence;kotlin.CharSequence;kotlin.CharSequence;kotlin.Int;kotlin.CharSequence;kotlin.Function1<kotlin.Char,kotlin.CharSequence>?){}kotlin.String>
+               	movq	%rax, 232(%rsp)
@@@@
-               	jne	0x421d40 <kfun:#main(){}+0x2e0>
-               	movq	56(%rsp), %rax
-               	movq	%r15, 32(%rax)
-               	movl	48(%rax), %r13d
-               	testl	%r13d, %r13d
-               	js	0x422c4c <kfun:#main(){}+0x11ec>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
-               	leaq	31(,%r13,8), %rsi
+               	jne	0x421f50 <kfun:#main(){}+0x2d0>
+               	movq	%r15, 32(%r13)
+               	movl	48(%r13), %r12d
+               	testl	%r12d, %r12d
+               	js	0x422e93 <kfun:#main(){}+0x1213>
+               	movq	296(%r14), %rdi
+               	leaq	31(,%r12,8), %rsi
@@@@
-               	movl	%r13d, 24(%r15)
-               	movq	%rcx, 72(%rsp)
-               	movq	%rcx, 232(%rsp)
-               	xorl	%r12d, %r12d
-               	cmpq	%r12, %r13
-               	je	0x421f79 <kfun:#main(){}+0x519>
+               	movl	%r12d, 24(%r15)
+               	movq	%rcx, 48(%rsp)
+               	movq	%rcx, 248(%rsp)
+               	xorl	%r13d, %r13d
+               	cmpq	%r13, %r12
+               	je	0x422184 <kfun:#main(){}+0x504>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	jmp	0x421ed5 <kfun:#main(){}+0x475>
-               	nopl	(%rax,%rax)
+               	movq	64(%rsp), %r14
+               	jmp	0x4220e5 <kfun:#main(){}+0x465>
+               	nopl	(%rax)
@@@@
-               	movq	40(%rsp), %rbp
-               	movq	288(%rbp), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%rbp), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r14)
@@@@
-               	cmpq	%rax, %r12
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r13
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	%rcx, 32(%r15,%r12,8)
-               	addq	$1, %r12
-               	cmpq	%r12, %r13
-               	jne	0x421e20 <kfun:#main(){}+0x3c0>
-               	movq	56(%rsp), %rcx
-               	movq	72(%rsp), %rax
-               	movq	%rax, 40(%rcx)
-               	movq	152(%rsp), %rax
+               	movq	%rcx, 32(%r15,%r13,8)
+               	addq	$1, %r13
+               	cmpq	%r13, %r12
+               	jne	0x422030 <kfun:#main(){}+0x3b0>
+               	movq	120(%rsp), %r13
+               	movq	48(%rsp), %rax
+               	movq	%rax, 40(%r13)
+               	movq	168(%rsp), %rax
+               	movq	%rax, 288(%r14)

@@ -270,286 +269,281 @@
@@@[(3, 13), (14, 18), (19, 23), (38, 55), (56, 63), (64, 76), (88, 92), (106, 109), (110, 122), (123, 140), (141, 149), (151, 165), (171, 177), (188, 197), (200, 201), (207, 211), (212, 217), (221, 227), (230, 244), (261, 265), (268, 274), (277, 279), (281, 283), (304, 318), (329, 331), (332, 334), (342, 344), (345, 347), (348, 362), (366, 370), (371, 393), (395, 401), (402, 412), (414, 415), (431, 434)]@@@
-               	movq	$0, 272(%rsp)
-               	movq	%rax, 152(%rsp)
-               	movq	40(%rsp), %r13
-               	leaq	144(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movq	$0, 288(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 168(%rsp)
+               	leaq	160(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rax, 160(%rsp)
-               	movl	48(%rcx), %ebp
+               	movq	%rax, 176(%rsp)
+               	movl	48(%r13), %ebp
@@@@
-               	js	0x422c87 <kfun:#main(){}+0x1227>
-               	movq	296(%r13), %rdi
+               	js	0x422e27 <kfun:#main(){}+0x11a7>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 176(%rsp)
-               	xorl	%r15d, %r15d
-               	movq	%rbx, 72(%rsp)
-               	movq	%rbp, 336(%rsp)
-               	cmpq	%rbp, %r15
-               	je	0x422798 <kfun:#main(){}+0xd38>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax,%rax)
-               	movb	281826(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rax, 192(%rsp)
+               	xorl	%r12d, %r12d
+               	movq	%rbx, 152(%rsp)
+               	movq	%rbp, 352(%rsp)
+               	cmpq	%rbp, %r12
+               	je	0x4229a8 <kfun:#main(){}+0xd28>
+               	nopl	(%rax)
+               	movb	283226(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42209f <kfun:#main(){}+0x63f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	56(%rsp), %rax
-               	movq	40(%rax), %rax
+               	je	0x4222af <kfun:#main(){}+0x62f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	40(%r13), %rax
@@@@
-               	cmpq	%rcx, %r15
-               	jae	0x422adc <kfun:#main(){}+0x107c>
-               	movq	16(%rax,%r15,8), %rax
-               	movq	%rax, 184(%rsp)
-               	movslq	8(%rax), %r12
-               	movl	277045(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	cmpq	%rcx, %r12
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
+               	movq	16(%rax,%r12,8), %rax
+               	movq	%rax, 200(%rsp)
+               	movl	8(%rax), %r15d
+               	movl	278442(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	%rbx, 192(%rsp)
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 208(%rsp)
+               	movq	296(%r14), %rdi
@@@@
-               	movl	%r15d, 32(%rax)
+               	movq	%r12, 48(%rsp)
+               	movl	%r12d, 32(%rax)
@@@@
-               	movl	%eax, 64(%rsp)
-               	movq	$0, 304(%rsp)
-               	movq	288(%r13), %rax
-               	movq	%rax, 288(%rsp)
-               	leaq	280(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	movl	%eax, 144(%rsp)
+               	movq	$0, 328(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 312(%rsp)
+               	leaq	304(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	%rax, 296(%rsp)
-               	leaq	304(%rsp), %rsi
-               	callq	0x418f90 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x426df0 <CreateStablePointer>
-               	movq	%rax, 128(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x439b40 <(anonymous namespace)::theState()>
+               	movq	%rax, 320(%rsp)
+               	leaq	328(%rsp), %rsi
+               	callq	0x4190e0 <WorkerLaunchpad>
+               	movslq	%r15d, %r12
+               	movq	328(%rsp), %rdi
+               	callq	0x427470 <CreateStablePointer>
+               	movq	%rax, 136(%rsp)
+               	movq	$0, 328(%rsp)
+               	callq	0x43a7d0 <(anonymous namespace)::theState()>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
-               	je	0x422200 <kfun:#main(){}+0x7a0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x422200 <kfun:#main(){}+0x7a0>
+               	testq	%rbx, %rbx
+               	je	0x422420 <kfun:#main(){}+0x7a0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x422420 <kfun:#main(){}+0x7a0>
@@@@
-               	je	0x422200 <kfun:#main(){}+0x7a0>
-               	movq	%rbp, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x422420 <kfun:#main(){}+0x7a0>
+               	movq	%rbx, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	144(%r14), %rax
-               	movq	(%rax,%rcx,8), %rax
-               	testq	%rax, %rax
-               	jne	0x42225d <kfun:#main(){}+0x7fd>
-               	jmp	0x422370 <kfun:#main(){}+0x910>
-               	nopl	(%rax,%rax)
-               	movl	%r12d, %eax
+               	jmp	0x422449 <kfun:#main(){}+0x7c9>
+               	movl	%r15d, %eax
@@@@
+               	movq	48(%rsp), %r12
@@@@
-               	cmpl	%r12d, 8(%rbp)
-               	jne	0x422284 <kfun:#main(){}+0x824>
+               	cmpl	%r15d, 8(%rbp)
+               	jne	0x422494 <kfun:#main(){}+0x814>
@@@@
-               	jne	0x4222bf <kfun:#main(){}+0x85f>
-               	jmp	0x422370 <kfun:#main(){}+0x910>
+               	jne	0x4224ce <kfun:#main(){}+0x84e>
+               	jmp	0x422570 <kfun:#main(){}+0x8f0>
+               	nopl	(%rax)
@@@@
-               	jne	0x422370 <kfun:#main(){}+0x910>
-               	cmpl	%r12d, %esi
-               	je	0x4222b6 <kfun:#main(){}+0x856>
+               	jne	0x422570 <kfun:#main(){}+0x8f0>
+               	cmpl	%r15d, %esi
+               	je	0x4224c5 <kfun:#main(){}+0x845>
@@@@
-               	je	0x422370 <kfun:#main(){}+0x910>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422270 <kfun:#main(){}+0x810>
-               	movq	%rsi, %rax
+               	je	0x422570 <kfun:#main(){}+0x8f0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422480 <kfun:#main(){}+0x800>
@@@@
-               	je	0x422378 <kfun:#main(){}+0x918>
-               	movq	%rax, %r12
+               	je	0x422578 <kfun:#main(){}+0x8f8>
+               	movq	%rax, %r15
@@@@
-               	movl	$1, (%r12)
-               	movl	%eax, 4(%r12)
-               	movq	48(%rsp), %rax
+               	movl	$1, (%r15)
+               	movl	%eax, 4(%r15)
+               	movq	56(%rsp), %rax
@@@@
-               	leaq	16(%r12), %rdi
+               	leaq	16(%r15), %rdi
@@@@
-               	movq	%r12, %rdi
+               	movq	%r15, %rdi
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x42237b <kfun:#main(){}+0x91b>
-               	nopl	(%rax)
-               	xorl	%r12d, %r12d
-               	jmp	0x422685 <kfun:#main(){}+0xc25>
-               	xorl	%r12d, %r12d
-               	movl	4(%r12), %r8d
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x42257b <kfun:#main(){}+0x8fb>
+               	nop
+               	xorl	%r15d, %r15d
+               	jmp	0x422873 <kfun:#main(){}+0xbf3>
+               	xorl	%r15d, %r15d
+               	movl	4(%r15), %r8d
@@@@
-               	movq	%rdx, %rbp
+               	movq	%rdx, %rbx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	movl	%edx, %ebp
+               	movl	%edx, %ebx
@@@@
-               	movq	(%rax,%rbp,8), %rax
+               	movq	(%rax,%rbx,8), %rax
@@@@
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x4223f0 <kfun:#main(){}+0x990>
-               	testq	%rbx, %rbx
-               	jne	0x42241f <kfun:#main(){}+0x9bf>
-               	jmp	0x42242c <kfun:#main(){}+0x9cc>
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x4225f0 <kfun:#main(){}+0x970>
+               	testq	%rbp, %rbp
+               	jne	0x42261f <kfun:#main(){}+0x99f>
+               	jmp	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x42242c <kfun:#main(){}+0x9cc>
+               	cmpq	%rbx, %rdx
+               	jne	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	je	0x42241a <kfun:#main(){}+0x9ba>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4223e0 <kfun:#main(){}+0x980>
-               	movq	%rcx, %rax
+               	je	0x42261a <kfun:#main(){}+0x99a>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4225e0 <kfun:#main(){}+0x960>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x4223eb <kfun:#main(){}+0x98b>
-               	jmp	0x42242c <kfun:#main(){}+0x9cc>
+               	cmpq	%rbx, %rdx
+               	je	0x4225eb <kfun:#main(){}+0x96b>
+               	jmp	0x422628 <kfun:#main(){}+0x9a8>
@@@@
-               	je	0x42242c <kfun:#main(){}+0x9cc>
-               	addq	$8, %rbx
-               	movl	64(%rsp), %edi
-               	jmp	0x42262d <kfun:#main(){}+0xbcd>
-               	movl	%r8d, %ebx
-               	movq	%r12, 320(%rsp)
+               	je	0x422628 <kfun:#main(){}+0x9a8>
+               	addq	$8, %rbp
+               	jmp	0x422814 <kfun:#main(){}+0xb94>
+               	movq	%rbx, %rbp
@@@@
+               	movl	%r8d, %ebx
@@@@
-               	movl	64(%rsp), %edi
-               	movq	120(%rsp), %rdx
+               	movq	128(%rsp), %rbx

@@ -558,255 +552,262 @@
@@@[(3, 6), (7, 18), (25, 27), (28, 47), (49, 52), (56, 80), (83, 88), (100, 104), (107, 114), (121, 123), (124, 132), (133, 138), (139, 150), (151, 154), (155, 159), (160, 165), (166, 176), (183, 188), (223, 238), (241, 243), (245, 247), (249, 251), (265, 269), (270, 276), (277, 289), (290, 292), (293, 306), (307, 318), (321, 323), (325, 327), (332, 343), (344, 348), (352, 360), (362, 376), (382, 390), (391, 393), (395, 400), (403, 408)]@@@
-               	movq	104(%r14), %rbx
+               	movl	76(%rsp), %r8d
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x42255f <kfun:#main(){}+0xaff>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x4224f8 <kfun:#main(){}+0xa98>
+               	testq	%rbp, %rbp
+               	je	0x42273e <kfun:#main(){}+0xabe>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4226f8 <kfun:#main(){}+0xa78>
+               	nop
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x42255f <kfun:#main(){}+0xaff>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x42273e <kfun:#main(){}+0xabe>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x4224d0 <kfun:#main(){}+0xa70>
+               	je	0x4226d0 <kfun:#main(){}+0xa50>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x4224df <kfun:#main(){}+0xa7f>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r13,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x4224f0 <kfun:#main(){}+0xa90>
-               	movq	%rcx, (%r13,%rdi,8)
-               	jmp	0x4224f0 <kfun:#main(){}+0xa90>
-               	leaq	136(%r14), %r13
-               	movq	$0, 136(%r14)
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	jne	0x4224c8 <kfun:#main(){}+0xa68>
+               	jne	0x4226df <kfun:#main(){}+0xa5f>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r13,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x4226f0 <kfun:#main(){}+0xa70>
+               	movq	%rsi, (%r13,%rbx,8)
+               	jmp	0x4226f0 <kfun:#main(){}+0xa70>
@@@@
-               	je	0x422574 <kfun:#main(){}+0xb14>
-               	callq	0x413730 <free@plt>
+               	je	0x422758 <kfun:#main(){}+0xad8>
+               	callq	0x413710 <free@plt>
+               	movl	76(%rsp), %r8d
@@@@
-               	jmp	0x4225a8 <kfun:#main(){}+0xb48>
-               	movl	140(%rsp), %eax
+               	jmp	0x422788 <kfun:#main(){}+0xb08>
+               	movl	%r8d, %eax
@@@@
-               	movl	64(%rsp), %edi
-               	movq	120(%rsp), %rdx
-               	movq	%rdx, %rbx
-               	addq	$8, %rbx
+               	movq	128(%rsp), %rbx
+               	movq	%rbx, %rbp
+               	addq	$8, %rbp
@@@@
-               	movq	%rax, (%rdx)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rdx, (%rax)
-               	jmp	0x422623 <kfun:#main(){}+0xbc3>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rbx, (%rax)
+               	jmp	0x422803 <kfun:#main(){}+0xb83>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdx)
-               	movq	%rdx, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r14)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x42261e <kfun:#main(){}+0xbbe>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x4227fe <kfun:#main(){}+0xb7e>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x42260c <kfun:#main(){}+0xbac>
+               	je	0x4227f0 <kfun:#main(){}+0xb70>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x422610 <kfun:#main(){}+0xbb0>
+               	divq	%r8
+               	jmp	0x4227f5 <kfun:#main(){}+0xb75>
@@@@
-               	divl	%ebp
-               	movq	120(%rsp), %rax
-               	movq	%rax, (%r13,%rdx,8)
+               	divl	%r8d
+               	movq	%rbx, (%r13,%rdx,8)
@@@@
-               	movq	%rcx, (%r13,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	40(%rsp), %r13
-               	movq	%r12, 8(%rbx)
+               	movq	%rdi, (%r13,%rsi,8)
+               	movq	112(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r14)
+               	movq	120(%rsp), %r13
+               	movq	%r15, 8(%rbp)
@@@@
-               	movq	%r12, 104(%rsp)
-               	movl	%edi, 112(%rsp)
+               	movq	%r15, 104(%rsp)
+               	movl	144(%rsp), %eax
+               	movl	%eax, 112(%rsp)
@@@@
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	testq	%r12, %r12
-               	je	0x422c0c <kfun:#main(){}+0x11ac>
-               	movl	4(%r12), %ebx
-               	movq	288(%rsp), %rax
-               	movq	%rax, 288(%r13)
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax)
+               	testq	%r15, %r15
+               	movq	64(%rsp), %r14
+               	je	0x422e22 <kfun:#main(){}+0x11a2>
+               	movl	4(%r15), %ebx
+               	movq	312(%rsp), %rax
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	288(%r13), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r13)
+               	movq	%rax, 288(%r14)
@@@@
-               	movq	296(%r13), %rdi
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rax, 288(%r13)
-               	movq	72(%rsp), %rbx
+               	movq	%rax, 288(%r14)
+               	movq	152(%rsp), %rbx
@@@@
-               	cmpq	%rax, %r15
-               	movq	336(%rsp), %rbp
-               	jae	0x422adc <kfun:#main(){}+0x107c>
+               	cmpq	%rax, %r12
+               	movq	352(%rsp), %rbp
+               	jae	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	%rcx, 32(%rbx,%r15,8)
-               	addq	$1, %r15
-               	cmpq	%rbp, %r15
-               	jne	0x422090 <kfun:#main(){}+0x630>
+               	movq	%rcx, 32(%rbx,%r12,8)
+               	addq	$1, %r12
+               	cmpq	%rbp, %r12
+               	jne	0x4222a0 <kfun:#main(){}+0x620>
+               	jmp	0x4229a8 <kfun:#main(){}+0xd28>
+               	leaq	136(%r14), %r13
+               	movq	$0, 136(%r14)
+               	jmp	0x4226a9 <kfun:#main(){}+0xa29>
@@@@
-               	xorl	%r12d, %r12d
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r12d, %eax
-               	movq	%rax, 64(%rsp)
-               	cmpq	64(%rsp), %r12
-               	je	0x422abb <kfun:#main(){}+0x105b>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	movb	279986(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 144(%rsp)
+               	cmpq	144(%rsp), %rbp
+               	je	0x422cd1 <kfun:#main(){}+0x1051>
+               	nopl	(%rax,%rax)
+               	movb	281386(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x4227cf <kfun:#main(){}+0xd6f>
-               	callq	0x426770 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%rbx,%r12,8), %rax
-               	movq	%rax, 216(%rsp)
-               	movslq	8(%rax), %r15
+               	je	0x4229df <kfun:#main(){}+0xd5f>
+               	callq	0x426da0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 48(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
+               	movq	%rax, 232(%rsp)
+               	movl	8(%rax), %r13d
@@@@
-               	movq	288(%r13), %rax
+               	movq	288(%r14), %rax
@@@@
-               	movq	%rax, 288(%r13)
+               	movq	%rax, 288(%r14)
@@@@
-               	je	0x422832 <kfun:#main(){}+0xdd2>
-               	leaq	275150(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-40701(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43bf40 <CallInitGlobalPossiblyLock>
-               	movq	275047(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	je	0x422a47 <kfun:#main(){}+0xdc7>
+               	leaq	276537(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40914(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43cc80 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r12
+               	movq	276431(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
@@@@
-               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
+               	callq	0x41b620 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r15
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4228a0 <kfun:#main(){}+0xe40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4228a0 <kfun:#main(){}+0xe40>
+               	testq	%rbp, %rbp
+               	je	0x422ac0 <kfun:#main(){}+0xe40>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422ac0 <kfun:#main(){}+0xe40>
@@@@
-               	je	0x4228a0 <kfun:#main(){}+0xe40>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422ac0 <kfun:#main(){}+0xe40>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	movq	%r12, 56(%rsp)
-               	je	0x4228d0 <kfun:#main(){}+0xe70>
-               	movq	%r15, %rax
+               	je	0x422ae0 <kfun:#main(){}+0xe60>
+               	movq	%r12, %rax
@@@@
-               	jmp	0x4228d9 <kfun:#main(){}+0xe79>
-               	nopl	(%rax)
-               	movl	%r15d, %eax
+               	jmp	0x422ae9 <kfun:#main(){}+0xe69>
+               	movl	%r13d, %eax

@@ -814,126 +815,125 @@
@@@[(3, 17), (21, 47), (50, 60), (61, 71), (72, 86), (92, 98), (100, 110), (111, 125), (131, 140), (166, 171), (172, 176), (177, 180), (183, 207)]@@@
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	(%rax), %rbx
-               	cmpl	%r15d, 8(%rbx)
-               	jne	0x422914 <kfun:#main(){}+0xeb4>
-               	testq	%rbx, %rbx
-               	jne	0x42294e <kfun:#main(){}+0xeee>
-               	jmp	0x422a10 <kfun:#main(){}+0xfb0>
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422b24 <kfun:#main(){}+0xea4>
+               	testq	%rbp, %rbp
+               	jne	0x422b5e <kfun:#main(){}+0xede>
+               	jmp	0x422c20 <kfun:#main(){}+0xfa0>
@@@@
-               	jne	0x422a10 <kfun:#main(){}+0xfb0>
-               	cmpl	%r15d, %esi
-               	je	0x422945 <kfun:#main(){}+0xee5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422900 <kfun:#main(){}+0xea0>
-               	movq	%rsi, %rax
+               	jne	0x422c20 <kfun:#main(){}+0xfa0>
+               	cmpl	%r13d, %esi
+               	je	0x422b55 <kfun:#main(){}+0xed5>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422b10 <kfun:#main(){}+0xe90>
@@@@
-               	je	0x42290f <kfun:#main(){}+0xeaf>
-               	jmp	0x422a10 <kfun:#main(){}+0xfb0>
-               	testq	%rbp, %rbp
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	16(%rbx), %r12
+               	je	0x422b1f <kfun:#main(){}+0xe9f>
+               	jmp	0x422c20 <kfun:#main(){}+0xfa0>
+               	testq	%rbx, %rbx
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	16(%rbp), %r12
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 128(%rsp)
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 136(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4229b0 <kfun:#main(){}+0xf50>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4229b0 <kfun:#main(){}+0xf50>
+               	testq	%rbp, %rbp
+               	je	0x422bc0 <kfun:#main(){}+0xf40>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422bc0 <kfun:#main(){}+0xf40>
@@@@
-               	je	0x4229b0 <kfun:#main(){}+0xf50>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x422bc0 <kfun:#main(){}+0xf40>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	128(%rsp), %rdi
+               	movq	56(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	136(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422a10 <kfun:#main(){}+0xfb0>
+               	testq	%rbp, %rbp
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422c20 <kfun:#main(){}+0xfa0>
@@@@
-               	je	0x422a10 <kfun:#main(){}+0xfb0>
-               	movq	%rbx, %rdi
-               	callq	0x4265a0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	movq	48(%rsp), %rax
+               	je	0x422c20 <kfun:#main(){}+0xfa0>
+               	movq	%rbp, %rdi
+               	callq	0x426bb0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	56(%rsp), %rax
@@@@
-               	cmpl	%r12d, 8(%r13)
-               	jbe	0x422adc <kfun:#main(){}+0x107c>
+               	cmpl	%r12d, 8(%r15)
+               	movq	64(%rsp), %r14
+               	jbe	0x422cf2 <kfun:#main(){}+0x1072>
@@@@
-               	movq	16(%r13,%rax,8), %rax
-               	movq	%rax, 224(%rsp)
+               	movq	16(%r15,%rax,8), %rax
+               	movq	%rax, 240(%rsp)
@@@@
-               	movq	40(%rsp), %r13
-               	movq	%rcx, 288(%r13)
+               	movq	%rcx, 288(%r14)
@@@@
-               	movq	72(%rsp), %rbx
-               	jae	0x422ae1 <kfun:#main(){}+0x1081>
-               	movq	56(%rsp), %r12
-               	addq	$1, %r12
-               	movl	%r15d, %edi
-               	leaq	232(%rsp), %rsi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	cmpq	64(%rsp), %r12
-               	jne	0x4227c0 <kfun:#main(){}+0xd60>
-               	movq	360(%rsp), %rax
-               	movq	%rax, 288(%r13)
-               	addq	$392, %rsp              # imm = 0x188
+               	jae	0x422cf7 <kfun:#main(){}+0x1077>
+               	movq	48(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
+               	leaq	248(%rsp), %rsi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	152(%rsp), %rbx
+               	cmpq	144(%rsp), %rbp
+               	jne	0x4229d0 <kfun:#main(){}+0xd50>
+               	movq	376(%rsp), %rax
+               	movq	%rax, 288(%r14)
+               	addq	$408, %rsp              # imm = 0x198

@@ -941,2420 +941,2417 @@
@@@[(12, 22), (62, 72), (90, 99), (108, 115), (124, 130), (189, 190)]@@@
-               	jne	0x422c07 <kfun:#main(){}+0x11a7>
-               	leaq	264(%rsp), %rsi
-               	movl	%r15d, %edi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	movq	40(%rsp), %rax
+               	jne	0x422e1d <kfun:#main(){}+0x119d>
+               	leaq	280(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	64(%rsp), %rax
@@@@
-               	callq	0x43c120 <ThrowException>
-               	leaq	248(%rsp), %rsi
-               	movl	%r15d, %edi
-               	callq	0x43d350 <Kotlin_Worker_consumeFuture>
-               	movq	40(%rsp), %rax
+               	callq	0x43ce60 <ThrowException>
+               	leaq	264(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43e110 <Kotlin_Worker_consumeFuture>
+               	movq	64(%rsp), %rax
@@@@
-               	callq	0x43c120 <ThrowException>
-               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	callq	0x43ce60 <ThrowException>
+               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rbx, 192(%rsp)
-               	jmp	0x422cbb <kfun:#main(){}+0x125b>
-               	movq	40(%rsp), %rax
-               	movq	296(%rax), %rdi
+               	movq	%rbx, 184(%rsp)
+               	jmp	0x422ec7 <kfun:#main(){}+0x1247>
+               	movq	296(%r14), %rdi
@@@@
-               	movq	%rbx, 224(%rsp)
-               	jmp	0x422cbb <kfun:#main(){}+0x125b>
-               	movq	296(%r13), %rdi
+               	movq	%rbx, 208(%rsp)
+               	jmp	0x422ec7 <kfun:#main(){}+0x1247>
+               	movq	296(%r14), %rdi
@@@@
-               	nopw	%cs:(%rax,%rax)
