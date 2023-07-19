--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedString5Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:27.370631976 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedString5Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:16.150410224 +0200

@@ -38,7 +38,6 @@
@@@[(3, 4)]@@@
-               	leaq	192(%rsp), %r14

@@ -46,81 +45,88 @@
@@@[(3, 4), (5, 10), (12, 15), (16, 21), (25, 31), (32, 42), (43, 65), (66, 68), (75, 81), (84, 88), (92, 100), (108, 111)]@@@
-               	movq	%rax, 136(%rsp)
@@@@
+               	movq	%rax, 112(%rsp)
+               	movl	52(%rax), %r12d
+               	testl	%r12d, %r12d
+               	js	0x422cdf <kfun:#main(){}+0x107f>
+               	leaq	192(%rsp), %r14
@@@@
+               	leaq	(%r12,%r12), %rsi
+               	addq	$31, %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$20024, %esi            # imm = 0x4E38
-               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %rbx
+               	callq	0x42a3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbp
@@@@
-               	leaq	232485(%rip), %rax      # 0x45a7e0 <ktypeglobal:kotlin.CharArray#internal>
-               	movq	%rax, 16(%rbx)
-               	movl	$10000, 24(%rbx)        # imm = 0x2710
+               	leaq	233860(%rip), %rax      # 0x45af60 <ktypeglobal:kotlin.CharArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	%r12d, 24(%rbp)
@@@@
-               	xorl	%ebp, %ebp
-               	cmpq	$10000, %rbp            # imm = 0x2710
-               	je	0x421c12 <kfun:#main(){}+0x1c2>
-               	nopl	(%rax)
-               	movzbl	283025(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%ebx, %ebx
+               	cmpq	%rbx, %r12
+               	je	0x421e2e <kfun:#main(){}+0x1ce>
+               	nopw	(%rax,%rax)
+               	movzbl	284409(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x421bf0 <kfun:#main(){}+0x1a0>
-               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movl	24(%rbx), %eax
-               	cmpq	%rax, %rbp
-               	jae	0x42294f <kfun:#main(){}+0xeff>
-               	movq	16(%rbx), %rax
-               	movw	%bp, 32(%rbx,%rbp,2)
-               	addq	$1, %rbp
-               	cmpq	$10000, %rbp            # imm = 0x2710
-               	jne	0x421be0 <kfun:#main(){}+0x190>
-               	movq	136(%rsp), %rbx
+               	je	0x421e10 <kfun:#main(){}+0x1b0>
+               	callq	0x426c30 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movl	24(%rbp), %eax
+               	cmpq	%rax, %rbx
+               	jae	0x422baa <kfun:#main(){}+0xf4a>
+               	movq	16(%rbp), %rax
+               	movw	%bx, 32(%rbp,%rbx,2)
+               	addq	$1, %rbx
+               	cmpq	%rbx, %r12
+               	jne	0x421e00 <kfun:#main(){}+0x1a0>
+               	movq	112(%rsp), %rbx
@@@@
-               	movq	%r15, %rdi
+               	movq	24(%rbx), %rdi
@@@@
-               	js	0x422a84 <kfun:#main(){}+0x1034>
-               	movq	48(%rsp), %rbp
-               	movq	296(%rbp), %rdi
+               	js	0x422ce4 <kfun:#main(){}+0x1084>
+               	movq	48(%rsp), %r15
+               	movq	296(%r15), %rdi
@@@@
-               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42a3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbp
@@@@
-               	leaq	232144(%rip), %rax      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	%r14d, 24(%r15)
-               	movq	%rcx, 64(%rsp)
+               	leaq	233526(%rip), %rax      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	%r14d, 24(%rbp)
+               	movq	%rcx, 120(%rsp)
@@@@
-               	movzbl	282817(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movzbl	284201(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>

@@ -129,64 +135,65 @@
@@@[(28, 35), (37, 38), (39, 48), (49, 53), (66, 72), (73, 79), (89, 90), (91, 92)]@@@
-               	movq	48(%rsp), %rbp
-               	movq	120(%rsp), %r14
-               	jmp	0x421d65 <kfun:#main(){}+0x315>
+               	movq	48(%rsp), %r15
+               	movq	144(%rsp), %r14
+               	jmp	0x421f95 <kfun:#main(){}+0x335>
+               	nopw	%cs:(%rax,%rax)
@@@@
-               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movq	288(%rbp), %rax
-               	movq	%rax, 88(%rsp)
-               	leaq	80(%rsp), %rax
-               	movq	%rax, 288(%rbp)
+               	movaps	%xmm0, 64(%rsp)
+               	movq	288(%r15), %rax
+               	movq	%rax, 72(%rsp)
+               	leaq	64(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	%rax, 96(%rsp)
-               	movq	296(%rbp), %rdi
+               	movq	%rax, 80(%rsp)
+               	movq	296(%r15), %rdi
@@@@
-               	movq	88(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	movl	24(%r15), %eax
+               	movq	72(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movl	24(%rbp), %eax
@@@@
-               	jae	0x42294f <kfun:#main(){}+0xeff>
-               	movq	16(%r15), %rax
-               	movq	%rcx, 32(%r15,%r13,8)
+               	jae	0x422baa <kfun:#main(){}+0xf4a>
+               	movq	16(%rbp), %rax
+               	movq	%rcx, 32(%rbp,%r13,8)
@@@@
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 160(%rsp)

@@ -194,167 +201,169 @@
@@@[(3, 4), (5, 6), (8, 10), (12, 22), (25, 29), (31, 41), (43, 56), (70, 74), (87, 89), (105, 107), (109, 111), (114, 117), (123, 127), (128, 136), (137, 151), (157, 169), (171, 175), (178, 182), (185, 187), (193, 197), (207, 213), (216, 230), (238, 242), (249, 251), (252, 254)]@@@
+               	movaps	%xmm0, 160(%rsp)
@@@@
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)
@@@@
-               	movl	48(%rcx), %ebx
-               	testl	%ebx, %ebx
-               	js	0x422abf <kfun:#main(){}+0x106f>
-               	movq	296(%rbp), %rdi
-               	leaq	31(,%rbx,8), %rsi
+               	movl	48(%rcx), %r14d
+               	testl	%r14d, %r14d
+               	js	0x422d1f <kfun:#main(){}+0x10bf>
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
@@@@
-               	callq	0x429b90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a3f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	231531(%rip), %rcx      # 0x45a750 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	232882(%rip), %rcx      # 0x45aed0 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%r14d, 24(%rbx)
@@@@
-               	movq	%r12, 152(%rsp)
-               	movq	%rbx, 352(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x422608 <kfun:#main(){}+0xbb8>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
-               	movb	282194(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rbx, 144(%rsp)
+               	movq	%r14, 352(%rsp)
+               	cmpq	%r14, %r13
+               	je	0x422862 <kfun:#main(){}+0xc02>
+               	nopw	(%rax,%rax)
+               	movb	283562(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movslq	8(%rax), %r15
-               	movl	277410(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movl	8(%rax), %r14d
+               	movl	278773(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	296(%rbp), %rdi
+               	movq	296(%r15), %rdi
@@@@
-               	movq	288(%rbp), %rax
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)
@@@@
-               	callq	0x418f90 <WorkerLaunchpad>
+               	callq	0x4190e0 <WorkerLaunchpad>
+               	movslq	%r14d, %r12
@@@@
-               	callq	0x439970 <(anonymous namespace)::theState()>
-               	movq	%rax, %r14
+               	callq	0x43a660 <(anonymous namespace)::theState()>
+               	movq	%rax, %r15
@@@@
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
-               	movq	%r14, %rdi
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
+               	movq	%r15, %rdi
@@@@
-               	testq	%rbp, %rbp
-               	je	0x422090 <kfun:#main(){}+0x640>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x422090 <kfun:#main(){}+0x640>
+               	testq	%rbx, %rbx
+               	je	0x4222c0 <kfun:#main(){}+0x660>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x4222c0 <kfun:#main(){}+0x660>
@@@@
-               	je	0x422090 <kfun:#main(){}+0x640>
-               	movq	%rbp, %rdi
-               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	movq	152(%r14), %rdi
-               	movq	%r15, %rax
+               	je	0x4222c0 <kfun:#main(){}+0x660>
+               	movq	%rbx, %rdi
+               	callq	0x426a40 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
+               	movq	152(%r15), %rdi
+               	movq	%r12, %rax
@@@@
-               	je	0x4220b0 <kfun:#main(){}+0x660>
-               	movq	%r15, %rax
+               	je	0x4222e0 <kfun:#main(){}+0x680>
+               	movq	%r12, %rax
@@@@
-               	jmp	0x4220b9 <kfun:#main(){}+0x669>
-               	movl	%r15d, %eax
+               	jmp	0x4222e9 <kfun:#main(){}+0x689>
+               	movl	%r14d, %eax
@@@@
-               	movq	144(%r14), %rax
+               	movq	144(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jne	0x422104 <kfun:#main(){}+0x6b4>
+               	cmpl	%r14d, 8(%rbp)
+               	jne	0x422334 <kfun:#main(){}+0x6d4>
@@@@
-               	jne	0x4221e0 <kfun:#main(){}+0x790>
-               	cmpl	%r15d, %esi
-               	je	0x422136 <kfun:#main(){}+0x6e6>
+               	jne	0x422410 <kfun:#main(){}+0x7b0>
+               	cmpl	%r14d, %esi
+               	je	0x422365 <kfun:#main(){}+0x705>
@@@@
-               	je	0x4221e0 <kfun:#main(){}+0x790>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4220f0 <kfun:#main(){}+0x6a0>
-               	movq	%rsi, %rax
+               	je	0x422410 <kfun:#main(){}+0x7b0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422320 <kfun:#main(){}+0x6c0>
@@@@
-               	je	0x4221e0 <kfun:#main(){}+0x790>
-               	movq	16(%rbp), %r15
+               	je	0x422410 <kfun:#main(){}+0x7b0>
+               	movq	16(%rbp), %r12
@@@@
-               	movl	260(%r14), %eax
+               	movl	260(%r15), %eax
@@@@
-               	movl	%ecx, 260(%r14)
+               	movl	%ecx, 260(%r15)

@@ -369,105 +378,104 @@
@@@[(29, 35), (43, 49), (50, 56), (58, 64), (65, 80), (83, 111), (113, 119), (120, 130), (132, 133), (134, 137), (138, 146), (150, 161), (162, 163)]@@@
-               	movl	4(%r13), %r8d
-               	movslq	%r8d, %rax
-               	movq	96(%r14), %rdi
+               	movl	4(%r13), %ebx
+               	movslq	%ebx, %rax
+               	movq	96(%r15), %rdi
@@@@
-               	movq	%rdx, %rbp
-               	movq	88(%r14), %rax
-               	movq	(%rax,%rbp,8), %rax
+               	movq	%rdx, %r14
+               	movq	88(%r15), %rax
+               	movq	(%rax,%r14,8), %rax
@@@@
-               	jne	0x422237 <kfun:#main(){}+0x7e7>
-               	jmp	0x42229c <kfun:#main(){}+0x84c>
-               	movl	%r8d, %eax
+               	jne	0x42246a <kfun:#main(){}+0x80a>
+               	jmp	0x4224d6 <kfun:#main(){}+0x876>
+               	movl	%ebx, %eax
@@@@
-               	movl	%edx, %ebp
-               	movq	88(%r14), %rax
-               	movq	(%rax,%rbp,8), %rax
+               	movl	%edx, %r14d
+               	movq	88(%r15), %rax
+               	movq	(%rax,%r14,8), %rax
@@@@
-               	je	0x42229c <kfun:#main(){}+0x84c>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x422260 <kfun:#main(){}+0x810>
-               	testq	%rbx, %rbx
-               	jne	0x42228f <kfun:#main(){}+0x83f>
-               	jmp	0x42229c <kfun:#main(){}+0x84c>
-               	nop
+               	je	0x4224d6 <kfun:#main(){}+0x876>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %ebx
+               	jne	0x42248f <kfun:#main(){}+0x82f>
+               	testq	%rbp, %rbp
+               	jne	0x4224be <kfun:#main(){}+0x85e>
+               	jmp	0x4224d6 <kfun:#main(){}+0x876>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x42229c <kfun:#main(){}+0x84c>
-               	cmpl	%ecx, %r8d
-               	je	0x42228a <kfun:#main(){}+0x83a>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x42229c <kfun:#main(){}+0x84c>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422250 <kfun:#main(){}+0x800>
-               	movq	%rcx, %rax
+               	cmpq	%r14, %rdx
+               	jne	0x4224d6 <kfun:#main(){}+0x876>
+               	cmpl	%ecx, %ebx
+               	je	0x4224b9 <kfun:#main(){}+0x859>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4224d6 <kfun:#main(){}+0x876>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422480 <kfun:#main(){}+0x820>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x42225b <kfun:#main(){}+0x80b>
-               	jmp	0x42229c <kfun:#main(){}+0x84c>
+               	cmpq	%r14, %rdx
+               	je	0x42248b <kfun:#main(){}+0x82b>
+               	jmp	0x4224d6 <kfun:#main(){}+0x876>
@@@@
-               	je	0x42229c <kfun:#main(){}+0x84c>
-               	addq	$8, %rbx
-               	movl	64(%rsp), %edi
-               	jmp	0x422480 <kfun:#main(){}+0xa30>
-               	movq	%r15, 344(%rsp)
+               	je	0x4224d6 <kfun:#main(){}+0x876>
+               	addq	$8, %rbp
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	jmp	0x4226d0 <kfun:#main(){}+0xa70>
@@@@
-               	movl	%r8d, %ebx
@@@@
-               	movl	%ebx, 76(%rsp)
-               	movq	%rax, 128(%rsp)
+               	movl	%ebx, 156(%rsp)
@@@@
-               	leaq	120(%r14), %rdi
-               	movq	96(%r14), %rsi
-               	movq	112(%r14), %rdx
+               	movq	%rax, %rbx
+               	leaq	120(%r15), %rdi
+               	movq	96(%r15), %rsi
+               	movq	%r15, 40(%rsp)
+               	movq	112(%r15), %rdx
@@@@
-               	jne	0x4222f7 <kfun:#main(){}+0x8a7>
-               	movq	88(%r14), %r12
-               	movl	64(%rsp), %edi
-               	movq	128(%rsp), %rcx
-               	movq	%rbp, %rsi
-               	jmp	0x422409 <kfun:#main(){}+0x9b9>
+               	movq	%r12, 344(%rsp)
+               	jne	0x422527 <kfun:#main(){}+0x8c7>
+               	movq	40(%rsp), %r15
+               	movq	88(%r15), %r12
+               	jmp	0x422644 <kfun:#main(){}+0x9e4>
@@@@
+               	movq	%rbx, %r14

@@ -476,338 +484,348 @@
@@@[(3, 21), (28, 30), (31, 50), (52, 55), (59, 82), (83, 93), (97, 100), (102, 108), (110, 121), (122, 125), (126, 145), (146, 157), (158, 161), (162, 166), (167, 200), (207, 211), (215, 217), (240, 244), (246, 248), (249, 250), (251, 260), (261, 265), (278, 285), (287, 293), (294, 313), (314, 322), (323, 326), (327, 334), (335, 337), (338, 339), (340, 349), (355, 376), (378, 384), (386, 400), (406, 414), (415, 417), (419, 424), (427, 432), (437, 439), (440, 454), (458, 484), (487, 497), (499, 507), (508, 522), (528, 538), (539, 547), (548, 562), (568, 575)]@@@
-               	movl	76(%rsp), %r8d
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	je	0x4223b3 <kfun:#main(){}+0x963>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x422376 <kfun:#main(){}+0x926>
-               	nopl	(%rax,%rax)
+               	movq	40(%rsp), %rax
+               	movq	104(%rax), %rbp
+               	movq	$0, 104(%rax)
+               	testq	%rbp, %rbp
+               	je	0x4225e9 <kfun:#main(){}+0x989>
+               	movq	40(%rsp), %rax
+               	leaq	104(%rax), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4225a6 <kfun:#main(){}+0x946>
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x4223b3 <kfun:#main(){}+0x963>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x4225e9 <kfun:#main(){}+0x989>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x422350 <kfun:#main(){}+0x900>
+               	je	0x422580 <kfun:#main(){}+0x920>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x42235e <kfun:#main(){}+0x90e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x42236e <kfun:#main(){}+0x91e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x42236e <kfun:#main(){}+0x91e>
-               	movq	88(%r14), %rdi
-               	leaq	136(%r14), %rax
+               	jne	0x42258e <kfun:#main(){}+0x92e>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x42259e <kfun:#main(){}+0x93e>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x42259e <kfun:#main(){}+0x93e>
+               	movq	40(%rsp), %rax
+               	movq	88(%rax), %rdi
+               	addq	$136, %rax
@@@@
-               	je	0x4223cd <kfun:#main(){}+0x97d>
-               	callq	0x413730 <free@plt>
-               	movl	76(%rsp), %r8d
-               	movq	%r15, 96(%r14)
-               	movq	%r12, 88(%r14)
+               	je	0x422602 <kfun:#main(){}+0x9a2>
+               	callq	0x413710 <free@plt>
+               	movq	40(%rsp), %rax
+               	movq	%r15, 96(%rax)
+               	movq	%r12, 88(%rax)
@@@@
-               	je	0x4223f3 <kfun:#main(){}+0x9a3>
+               	movq	%r14, %rbx
+               	je	0x422630 <kfun:#main(){}+0x9d0>
@@@@
-               	movq	%rdx, %rsi
-               	jmp	0x4223fd <kfun:#main(){}+0x9ad>
-               	movl	%r8d, %eax
+               	movq	%rdx, %r14
+               	jmp	0x42263f <kfun:#main(){}+0x9df>
+               	movl	156(%rsp), %eax
@@@@
-               	movl	%edx, %esi
-               	movl	64(%rsp), %edi
-               	movq	128(%rsp), %rcx
-               	movq	%rcx, %rbx
-               	addq	$8, %rbx
-               	movq	(%r12,%rsi,8), %rax
+               	movl	%edx, %r14d
+               	movq	40(%rsp), %r15
+               	movq	%rbx, %rbp
+               	addq	$8, %rbp
+               	movq	(%r12,%r14,8), %rax
@@@@
-               	movq	344(%rsp), %r15
-               	je	0x422430 <kfun:#main(){}+0x9e0>
+               	je	0x422663 <kfun:#main(){}+0xa03>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	(%r12,%rsi,8), %rax
-               	movq	%rcx, (%rax)
-               	jmp	0x422473 <kfun:#main(){}+0xa23>
-               	movq	%r14, %rbp
-               	addq	$104, %rbp
-               	movq	104(%r14), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	(%r12,%r14,8), %rax
+               	movq	%rbx, (%rax)
+               	jmp	0x4226ad <kfun:#main(){}+0xa4d>
+               	movq	%r15, %rdi
+               	addq	$104, %rdi
+               	movq	104(%r15), %rax
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r15)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x42246f <kfun:#main(){}+0xa1f>
-               	movq	96(%r14), %r8
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%r8, %rdx
+               	je	0x4226a9 <kfun:#main(){}+0xa49>
+               	movq	96(%r15), %rsi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rsi, %rdx
@@@@
-               	je	0x422462 <kfun:#main(){}+0xa12>
+               	je	0x42269d <kfun:#main(){}+0xa3d>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r8
-               	jmp	0x422467 <kfun:#main(){}+0xa17>
+               	divq	%rsi
+               	jmp	0x4226a1 <kfun:#main(){}+0xa41>
@@@@
-               	divl	%r8d
-               	movq	%rcx, (%r12,%rdx,8)
-               	movq	88(%r14), %r12
-               	movq	%rbp, (%r12,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	152(%rsp), %r12
-               	movq	%r13, 8(%rbx)
-               	movl	$2, 80(%rsp)
-               	leaq	-3011(%rip), %rax       # 0x4218d0 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal>
-               	movq	%rax, 88(%rsp)
-               	movq	144(%rsp), %rax
-               	movq	%rax, 96(%rsp)
-               	movq	%r13, 104(%rsp)
-               	movl	%edi, 112(%rsp)
-               	movq	112(%rsp), %rax
+               	divl	%esi
+               	movq	%rbx, (%r12,%rdx,8)
+               	movq	88(%r15), %r12
+               	movq	%rdi, (%r12,%r14,8)
+               	movq	112(%r15), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r15)
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	movq	344(%rsp), %r12
+               	movq	%r13, 8(%rbp)
+               	movl	$2, 64(%rsp)
+               	leaq	-3075(%rip), %rax       # 0x421ae0 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNN>runSumSharedStringWorkers$lambda$1#static(kotlin.String){}kotlin.Long#internal>
+               	movq	%rax, 72(%rsp)
+               	movq	%rdx, 80(%rsp)
+               	movq	%r13, 88(%rsp)
+               	movl	%ecx, 96(%rsp)
+               	movq	96(%rsp), %rax
@@@@
-               	movq	%r15, %rdi
-               	callq	0x439c70 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	%r12, %rdi
+               	callq	0x43a960 <Worker::putJob((anonymous namespace)::Job, bool)>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	48(%rsp), %rbp
-               	je	0x422a7f <kfun:#main(){}+0x102f>
+               	movq	48(%rsp), %r15
+               	je	0x422cda <kfun:#main(){}+0x107a>
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movq	288(%rbp), %rax
-               	movq	%rax, 88(%rsp)
-               	leaq	80(%rsp), %rax
-               	movq	%rax, 288(%rbp)
+               	movaps	%xmm0, 64(%rsp)
+               	movq	288(%r15), %rax
+               	movq	%rax, 72(%rsp)
+               	leaq	64(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	movq	%rax, 96(%rsp)
-               	movq	296(%rbp), %rdi
+               	movq	%rax, 80(%rsp)
+               	movq	296(%r15), %rdi
@@@@
-               	movq	88(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	movl	24(%r12), %eax
+               	movq	72(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movq	144(%rsp), %rbx
+               	movl	24(%rbx), %eax
@@@@
-               	jae	0x42294f <kfun:#main(){}+0xeff>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
+               	jae	0x422baa <kfun:#main(){}+0xf4a>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%r13,8)
@@@@
-               	movq	352(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x421f20 <kfun:#main(){}+0x4d0>
-               	jmp	0x422608 <kfun:#main(){}+0xbb8>
-               	leaq	136(%r14), %r12
-               	movq	$0, 136(%r14)
-               	jmp	0x422326 <kfun:#main(){}+0x8d6>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	movq	352(%rsp), %r14
+               	cmpq	%r14, %r13
+               	jne	0x422150 <kfun:#main(){}+0x4f0>
+               	jmp	0x422862 <kfun:#main(){}+0xc02>
+               	movq	40(%rsp), %rax
+               	leaq	136(%rax), %r12
+               	movq	$0, 136(%rax)
+               	jmp	0x422559 <kfun:#main(){}+0x8f9>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 64(%rsp)
-               	cmpq	64(%rsp), %r15
-               	je	0x42292e <kfun:#main(){}+0xede>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 128(%rsp)
+               	cmpq	128(%rsp), %rbp
+               	je	0x422b89 <kfun:#main(){}+0xf29>
@@@@
-               	movb	280386(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movb	281706(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42263f <kfun:#main(){}+0xbef>
-               	callq	0x4265a0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
+               	je	0x42289f <kfun:#main(){}+0xc3f>
+               	callq	0x426c30 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 120(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
@@@@
-               	movslq	8(%rax), %r12
+               	movl	8(%rax), %r13d
@@@@
-               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movq	288(%rbp), %rax
-               	movq	%rax, 88(%rsp)
-               	leaq	80(%rsp), %rax
-               	movq	%rax, 288(%rbp)
+               	movaps	%xmm0, 64(%rsp)
+               	movq	288(%r15), %rax
+               	movq	%rax, 72(%rsp)
+               	leaq	64(%rsp), %rax
+               	movq	%rax, 288(%r15)
@@@@
-               	je	0x4226a2 <kfun:#main(){}+0xc52>
-               	leaq	275550(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-40301(%rip), %rsi      # 0x418930 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43bd70 <CallInitGlobalPossiblyLock>
-               	movq	275447(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	104(%rsp), %rsi
-               	callq	0x41b480 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 104(%rsp)
-               	callq	0x439970 <(anonymous namespace)::theState()>
+               	je	0x422907 <kfun:#main(){}+0xca7>
+               	leaq	276857(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40594(%rip), %rsi      # 0x418a70 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43cb10 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	276751(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	88(%rsp), %rsi
+               	callq	0x41b620 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, 136(%rsp)
+               	movq	%rax, 88(%rsp)
+               	callq	0x43a660 <(anonymous namespace)::theState()>
@@@@
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422710 <kfun:#main(){}+0xcc0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422710 <kfun:#main(){}+0xcc0>
+               	testq	%rbp, %rbp
+               	je	0x422980 <kfun:#main(){}+0xd20>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422980 <kfun:#main(){}+0xd20>
@@@@
-               	je	0x422710 <kfun:#main(){}+0xcc0>
-               	movq	%rbx, %rdi
-               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422980 <kfun:#main(){}+0xd20>
+               	movq	%rbp, %rdi
+               	callq	0x426a40 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 120(%rsp)
-               	je	0x422740 <kfun:#main(){}+0xcf0>
-               	movq	%r12, %rax
+               	je	0x4229a0 <kfun:#main(){}+0xd40>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x422749 <kfun:#main(){}+0xcf9>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x4229a9 <kfun:#main(){}+0xd49>
+               	movl	%r13d, %eax
@@@@
-               	xorl	%r15d, %r15d
+               	xorl	%r12d, %r12d
@@@@
-               	je	0x422880 <kfun:#main(){}+0xe30>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x422784 <kfun:#main(){}+0xd34>
-               	testq	%rbx, %rbx
-               	jne	0x4227be <kfun:#main(){}+0xd6e>
-               	jmp	0x422880 <kfun:#main(){}+0xe30>
+               	je	0x422ad0 <kfun:#main(){}+0xe70>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x4229e4 <kfun:#main(){}+0xd84>
+               	testq	%rbp, %rbp
+               	jne	0x422a1e <kfun:#main(){}+0xdbe>
+               	jmp	0x422ad0 <kfun:#main(){}+0xe70>
@@@@
-               	jne	0x422880 <kfun:#main(){}+0xe30>
-               	cmpl	%r12d, %esi
-               	je	0x4227b5 <kfun:#main(){}+0xd65>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422880 <kfun:#main(){}+0xe30>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422770 <kfun:#main(){}+0xd20>
-               	movq	%rsi, %rax
+               	jne	0x422ad0 <kfun:#main(){}+0xe70>
+               	cmpl	%r13d, %esi
+               	je	0x422a15 <kfun:#main(){}+0xdb5>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422ad0 <kfun:#main(){}+0xe70>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4229d0 <kfun:#main(){}+0xd70>
@@@@
-               	je	0x42277f <kfun:#main(){}+0xd2f>
-               	jmp	0x422880 <kfun:#main(){}+0xe30>
-               	testq	%rbp, %rbp
-               	je	0x422880 <kfun:#main(){}+0xe30>
-               	movq	16(%rbx), %r15
+               	je	0x4229df <kfun:#main(){}+0xd7f>
+               	jmp	0x422ad0 <kfun:#main(){}+0xe70>
+               	testq	%rbx, %rbx
+               	je	0x422ad0 <kfun:#main(){}+0xe70>
+               	movq	16(%rbp), %r15
@@@@
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 144(%rsp)
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 112(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422820 <kfun:#main(){}+0xdd0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422820 <kfun:#main(){}+0xdd0>
+               	testq	%rbp, %rbp
+               	je	0x422a80 <kfun:#main(){}+0xe20>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422a80 <kfun:#main(){}+0xe20>
@@@@
-               	je	0x422820 <kfun:#main(){}+0xdd0>
-               	movq	%rbx, %rdi
-               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	movl	(%r15), %r15d
+               	je	0x422a80 <kfun:#main(){}+0xe20>
+               	movq	%rbp, %rdi
+               	callq	0x426a40 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
+               	movl	(%r15), %r12d
@@@@
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	144(%rsp), %rdi
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	112(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422880 <kfun:#main(){}+0xe30>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422880 <kfun:#main(){}+0xe30>
+               	testq	%rbp, %rbp
+               	je	0x422ad0 <kfun:#main(){}+0xe70>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422ad0 <kfun:#main(){}+0xe70>
@@@@
-               	je	0x422880 <kfun:#main(){}+0xe30>
-               	movq	%rbx, %rdi
-               	callq	0x4263d0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	je	0x422ad0 <kfun:#main(){}+0xe70>
+               	movq	%rbp, %rdi
+               	callq	0x426a40 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>

@@ -815,42 +833,43 @@
@@@[(23, 34), (35, 39), (42, 50), (51, 59), (60, 62)]@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %rbp
-               	jbe	0x42294f <kfun:#main(){}+0xeff>
-               	movslq	%r15d, %rax
-               	movq	16(%r13,%rax,8), %rax
+               	movq	136(%rsp), %rcx
+               	cmpl	%r12d, 8(%rcx)
+               	movq	48(%rsp), %r15
+               	jbe	0x422baa <kfun:#main(){}+0xf4a>
+               	movslq	%r12d, %rax
+               	movq	16(%rcx,%rax,8), %rax
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
+               	movq	72(%rsp), %rcx
+               	movq	%rcx, 288(%r15)
@@@@
-               	jae	0x422954 <kfun:#main(){}+0xf04>
-               	movq	120(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
+               	jae	0x422baf <kfun:#main(){}+0xf4f>
+               	movq	120(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
@@@@
-               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
-               	movq	152(%rsp), %r12
-               	cmpq	64(%rsp), %r15
-               	jne	0x422630 <kfun:#main(){}+0xbe0>
+               	callq	0x43dfa0 <Kotlin_Worker_consumeFuture>
+               	movq	144(%rsp), %rbx
+               	cmpq	128(%rsp), %rbp
+               	jne	0x422890 <kfun:#main(){}+0xc30>
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)

@@ -859,2409 +878,2410 @@
@@@[(15, 19), (60, 64), (82, 89), (101, 105), (130, 132), (161, 163)]@@@
-               	movl	%r12d, %edi
-               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
+               	movl	%r13d, %edi
+               	callq	0x43dfa0 <Kotlin_Worker_consumeFuture>
@@@@
-               	movl	%r12d, %edi
-               	callq	0x43d180 <Kotlin_Worker_consumeFuture>
+               	movl	%r13d, %edi
+               	callq	0x43dfa0 <Kotlin_Worker_consumeFuture>
@@@@
-               	callq	0x43bf50 <ThrowException>
-               	callq	0x41b3e0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418df0 <ThrowWorkerAlreadyTerminated>
+               	callq	0x43ccf0 <ThrowException>
+               	callq	0x41b580 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418f40 <ThrowWorkerAlreadyTerminated>
+               	callq	0x41b050 <ThrowIllegalArgumentException>
@@@@
-               	jmp	0x422af3 <kfun:#main(){}+0x10a3>
-               	movq	296(%rbp), %rdi
+               	jmp	0x422d53 <kfun:#main(){}+0x10f3>
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%r14, %rdi
+               	movq	40(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nop
