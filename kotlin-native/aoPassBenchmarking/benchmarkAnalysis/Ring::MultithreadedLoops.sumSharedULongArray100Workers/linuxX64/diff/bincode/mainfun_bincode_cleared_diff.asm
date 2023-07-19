--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedULongArray100Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:48:50.910625549 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumSharedULongArray100Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:00:38.580403483 +0200

@@ -45,143 +45,148 @@
@@@[(3, 4), (5, 10), (12, 14), (15, 18), (26, 28), (30, 39), (51, 57), (60, 66), (67, 69), (70, 74), (78, 86), (87, 99), (114, 118), (122, 124), (126, 130), (149, 160), (162, 163), (164, 173), (174, 178), (191, 215), (217, 218), (219, 220)]@@@
-               	movq	%rax, 136(%rsp)
@@@@
+               	movq	%rax, 112(%rsp)
+               	movl	44(%rax), %r15d
+               	testl	%r15d, %r15d
+               	js	0x4239df <kfun:#main(){}+0x105f>
+               	movabsq	$68719476728, %r12      # imm = 0xFFFFFFFF8
@@@@
+               	leaq	31(,%r15,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$80024, %esi            # imm = 0x13898
-               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x42b0f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
@@@@
-               	movl	$10000, 24(%rbx)        # imm = 0x2710
+               	movl	%r15d, 24(%rbx)
@@@@
-               	cmpq	$10000, %rbp            # imm = 0x2710
-               	je	0x422922 <kfun:#main(){}+0x1c2>
-               	nopw	%cs:(%rax,%rax)
-               	nop
-               	movzbl	279681(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmpq	%rbp, %r15
+               	je	0x422b4e <kfun:#main(){}+0x1ce>
+               	nopl	(%rax)
+               	movzbl	281049(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	$10000, %rbp            # imm = 0x2710
-               	jne	0x4228f0 <kfun:#main(){}+0x190>
-               	movq	136(%rsp), %rax
+               	cmpq	%rbp, %r15
+               	jne	0x422b20 <kfun:#main(){}+0x1a0>
+               	movq	112(%rsp), %rax
@@@@
-               	js	0x423774 <kfun:#main(){}+0x1014>
-               	movq	48(%rsp), %rbp
-               	movq	296(%rbp), %rdi
+               	js	0x4239e4 <kfun:#main(){}+0x1064>
+               	movq	48(%rsp), %r15
+               	movq	296(%r15), %rdi
@@@@
-               	andq	$-8, %rsi
+               	andq	%r12, %rsi
@@@@
-               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r15
+               	callq	0x42b0f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbp
@@@@
-               	leaq	232343(%rip), %rax      # 0x45b510 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rax, 16(%r15)
-               	movl	%r14d, 24(%r15)
-               	movq	%rcx, 64(%rsp)
+               	leaq	233711(%rip), %rax      # 0x45bc90 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	%r14d, 24(%rbp)
+               	movq	%rcx, 120(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	movq	%r14, 120(%rsp)
-               	cmpq	%r13, %r14
-               	je	0x422af4 <kfun:#main(){}+0x394>
-               	nop
-               	movzbl	279505(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%r12d, %r12d
+               	movq	%r14, 144(%rsp)
+               	cmpq	%r12, %r14
+               	je	0x422d33 <kfun:#main(){}+0x3b3>
+               	nopw	(%rax,%rax)
+               	movzbl	280873(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x422a50 <kfun:#main(){}+0x2f0>
-               	movq	%rax, %r12
+               	je	0x422c90 <kfun:#main(){}+0x310>
+               	movq	%rax, %r13
@@@@
-               	movq	%r12, %rdi
+               	movq	%r13, %rdi
@@@@
-               	leaq	107134(%rip), %rdx      # 0x43cc80 <(anonymous namespace)::workerRoutine(void*)>
-               	movq	%r12, %rcx
+               	leaq	110074(%rip), %rdx      # 0x43da30 <(anonymous namespace)::workerRoutine(void*)>
+               	movq	%r13, %rcx
@@@@
-               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	movl	(%r12), %ebx
-               	movq	48(%rsp), %rbp
-               	movq	120(%rsp), %r14
-               	jmp	0x422a55 <kfun:#main(){}+0x2f5>
+               	callq	0x427740 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movl	(%r13), %ebx
+               	movq	48(%rsp), %r15
+               	movq	144(%rsp), %r14
+               	jmp	0x422c95 <kfun:#main(){}+0x315>
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
-               	cmpq	%rax, %r13
-               	jae	0x42363f <kfun:#main(){}+0xedf>
-               	movq	16(%r15), %rax
-               	movq	%rcx, 32(%r15,%r13,8)
-               	addq	$1, %r13
-               	cmpq	%r13, %r14
-               	jne	0x4229a0 <kfun:#main(){}+0x240>
-               	movq	136(%rsp), %rcx
-               	movq	64(%rsp), %rax
+               	movq	72(%rsp), %rax
+               	movq	%rax, 288(%r15)
+               	movl	24(%rbp), %eax
+               	cmpq	%rax, %r12
+               	jae	0x4238aa <kfun:#main(){}+0xf2a>
+               	movq	16(%rbp), %rax
+               	movq	%rcx, 32(%rbp,%r12,8)
+               	addq	$1, %r12
+               	cmpq	%r12, %r14
+               	jne	0x422bd0 <kfun:#main(){}+0x250>
+               	movq	112(%rsp), %rcx
+               	movq	120(%rsp), %rax
@@@@
+               	movq	%rax, 288(%r15)
@@@@
-               	movaps	%xmm0, 160(%rsp)

@@ -189,167 +194,169 @@
@@@[(3, 4), (5, 6), (8, 10), (12, 22), (25, 29), (31, 41), (43, 56), (70, 74), (87, 89), (105, 107), (109, 111), (114, 117), (123, 127), (128, 136), (137, 151), (157, 169), (171, 175), (178, 182), (185, 187), (193, 197), (207, 213), (216, 230), (238, 242), (249, 251), (252, 254)]@@@
+               	movaps	%xmm0, 160(%rsp)
@@@@
+               	movq	288(%r15), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)
@@@@
-               	movl	40(%rcx), %ebx
-               	testl	%ebx, %ebx
-               	js	0x4237af <kfun:#main(){}+0x104f>
-               	movq	296(%rbp), %rdi
-               	leaq	31(,%rbx,8), %rsi
+               	movl	40(%rcx), %r14d
+               	testl	%r14d, %r14d
+               	js	0x423a1f <kfun:#main(){}+0x109f>
+               	movq	296(%r15), %rdi
+               	leaq	31(,%r14,8), %rsi
@@@@
-               	callq	0x42a880 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42b0f0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	231739(%rip), %rcx      # 0x45b510 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	233074(%rip), %rcx      # 0x45bc90 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%r14d, 24(%rbx)
@@@@
-               	movq	%r12, 152(%rsp)
-               	movq	%rbx, 352(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x4232f8 <kfun:#main(){}+0xb98>
-               	nopw	%cs:(%rax,%rax)
-               	nopl	(%rax)
-               	movb	278882(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rbx, 144(%rsp)
+               	movq	%r14, 352(%rsp)
+               	cmpq	%r14, %r13
+               	je	0x423562 <kfun:#main(){}+0xbe2>
+               	nopw	(%rax,%rax)
+               	movb	280234(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movslq	8(%rax), %r15
-               	movl	274098(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movl	8(%rax), %r14d
+               	movl	275445(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
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
-               	callq	0x418ec0 <WorkerLaunchpad>
+               	callq	0x419010 <WorkerLaunchpad>
+               	movslq	%r14d, %r12
@@@@
-               	callq	0x43a660 <(anonymous namespace)::theState()>
-               	movq	%rax, %r14
+               	callq	0x43b360 <(anonymous namespace)::theState()>
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
-               	je	0x422d80 <kfun:#main(){}+0x620>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x422d80 <kfun:#main(){}+0x620>
+               	testq	%rbx, %rbx
+               	je	0x422fc0 <kfun:#main(){}+0x640>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x422fc0 <kfun:#main(){}+0x640>
@@@@
-               	je	0x422d80 <kfun:#main(){}+0x620>
-               	movq	%rbp, %rdi
-               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	movq	152(%r14), %rdi
-               	movq	%r15, %rax
+               	je	0x422fc0 <kfun:#main(){}+0x640>
+               	movq	%rbx, %rdi
+               	callq	0x427740 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
+               	movq	152(%r15), %rdi
+               	movq	%r12, %rax
@@@@
-               	je	0x422da0 <kfun:#main(){}+0x640>
-               	movq	%r15, %rax
+               	je	0x422fe0 <kfun:#main(){}+0x660>
+               	movq	%r12, %rax
@@@@
-               	jmp	0x422da9 <kfun:#main(){}+0x649>
-               	movl	%r15d, %eax
+               	jmp	0x422fe9 <kfun:#main(){}+0x669>
+               	movl	%r14d, %eax
@@@@
-               	movq	144(%r14), %rax
+               	movq	144(%r15), %rax
@@@@
-               	cmpl	%r15d, 8(%rbp)
-               	jne	0x422df4 <kfun:#main(){}+0x694>
+               	cmpl	%r14d, 8(%rbp)
+               	jne	0x423034 <kfun:#main(){}+0x6b4>
@@@@
-               	jne	0x422ed0 <kfun:#main(){}+0x770>
-               	cmpl	%r15d, %esi
-               	je	0x422e26 <kfun:#main(){}+0x6c6>
+               	jne	0x423110 <kfun:#main(){}+0x790>
+               	cmpl	%r14d, %esi
+               	je	0x423065 <kfun:#main(){}+0x6e5>
@@@@
-               	je	0x422ed0 <kfun:#main(){}+0x770>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422de0 <kfun:#main(){}+0x680>
-               	movq	%rsi, %rax
+               	je	0x423110 <kfun:#main(){}+0x790>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423020 <kfun:#main(){}+0x6a0>
@@@@
-               	je	0x422ed0 <kfun:#main(){}+0x770>
-               	movq	16(%rbp), %r15
+               	je	0x423110 <kfun:#main(){}+0x790>
+               	movq	16(%rbp), %r12
@@@@
-               	movl	260(%r14), %eax
+               	movl	260(%r15), %eax
@@@@
-               	movl	%ecx, 260(%r14)
+               	movl	%ecx, 260(%r15)

@@ -364,105 +371,104 @@
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
-               	jne	0x422f27 <kfun:#main(){}+0x7c7>
-               	jmp	0x422f8c <kfun:#main(){}+0x82c>
-               	movl	%r8d, %eax
+               	jne	0x42316a <kfun:#main(){}+0x7ea>
+               	jmp	0x4231d6 <kfun:#main(){}+0x856>
+               	movl	%ebx, %eax
@@@@
-               	movl	%edx, %ebp
-               	movq	88(%r14), %rax
-               	movq	(%rax,%rbp,8), %rax
+               	movl	%edx, %r14d
+               	movq	88(%r15), %rax
+               	movq	(%rax,%r14,8), %rax
@@@@
-               	je	0x422f8c <kfun:#main(){}+0x82c>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x422f50 <kfun:#main(){}+0x7f0>
-               	testq	%rbx, %rbx
-               	jne	0x422f7f <kfun:#main(){}+0x81f>
-               	jmp	0x422f8c <kfun:#main(){}+0x82c>
-               	nop
+               	je	0x4231d6 <kfun:#main(){}+0x856>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %ebx
+               	jne	0x42318f <kfun:#main(){}+0x80f>
+               	testq	%rbp, %rbp
+               	jne	0x4231be <kfun:#main(){}+0x83e>
+               	jmp	0x4231d6 <kfun:#main(){}+0x856>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x422f8c <kfun:#main(){}+0x82c>
-               	cmpl	%ecx, %r8d
-               	je	0x422f7a <kfun:#main(){}+0x81a>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x422f8c <kfun:#main(){}+0x82c>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422f40 <kfun:#main(){}+0x7e0>
-               	movq	%rcx, %rax
+               	cmpq	%r14, %rdx
+               	jne	0x4231d6 <kfun:#main(){}+0x856>
+               	cmpl	%ecx, %ebx
+               	je	0x4231b9 <kfun:#main(){}+0x839>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4231d6 <kfun:#main(){}+0x856>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423180 <kfun:#main(){}+0x800>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x422f4b <kfun:#main(){}+0x7eb>
-               	jmp	0x422f8c <kfun:#main(){}+0x82c>
+               	cmpq	%r14, %rdx
+               	je	0x42318b <kfun:#main(){}+0x80b>
+               	jmp	0x4231d6 <kfun:#main(){}+0x856>
@@@@
-               	je	0x422f8c <kfun:#main(){}+0x82c>
-               	addq	$8, %rbx
-               	movl	64(%rsp), %edi
-               	jmp	0x423170 <kfun:#main(){}+0xa10>
-               	movq	%r15, 344(%rsp)
+               	je	0x4231d6 <kfun:#main(){}+0x856>
+               	addq	$8, %rbp
+               	movl	136(%rsp), %ecx
+               	movq	128(%rsp), %rdx
+               	jmp	0x4233d0 <kfun:#main(){}+0xa50>
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
-               	jne	0x422fe7 <kfun:#main(){}+0x887>
-               	movq	88(%r14), %r12
-               	movl	64(%rsp), %edi
-               	movq	128(%rsp), %rcx
-               	movq	%rbp, %rsi
-               	jmp	0x4230f9 <kfun:#main(){}+0x999>
+               	movq	%r12, 344(%rsp)
+               	jne	0x423227 <kfun:#main(){}+0x8a7>
+               	movq	40(%rsp), %r15
+               	movq	88(%r15), %r12
+               	jmp	0x423344 <kfun:#main(){}+0x9c4>
@@@@
+               	movq	%rbx, %r14

@@ -471,338 +477,348 @@
@@@[(3, 21), (28, 30), (31, 50), (52, 55), (59, 82), (83, 93), (97, 100), (102, 108), (110, 121), (122, 125), (126, 145), (146, 157), (158, 161), (162, 166), (167, 200), (207, 211), (215, 217), (240, 244), (246, 248), (249, 250), (251, 260), (261, 265), (278, 285), (287, 293), (294, 313), (314, 322), (323, 326), (327, 334), (335, 337), (338, 339), (340, 349), (355, 376), (378, 384), (386, 400), (406, 414), (415, 417), (419, 424), (427, 432), (437, 439), (440, 454), (458, 484), (487, 497), (499, 507), (508, 522), (528, 538), (539, 547), (548, 562), (568, 575)]@@@
-               	movl	76(%rsp), %r8d
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	je	0x4230a3 <kfun:#main(){}+0x943>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x423066 <kfun:#main(){}+0x906>
-               	nopl	(%rax,%rax)
+               	movq	40(%rsp), %rax
+               	movq	104(%rax), %rbp
+               	movq	$0, 104(%rax)
+               	testq	%rbp, %rbp
+               	je	0x4232e9 <kfun:#main(){}+0x969>
+               	movq	40(%rsp), %rax
+               	leaq	104(%rax), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x4232a6 <kfun:#main(){}+0x926>
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x4230a3 <kfun:#main(){}+0x943>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x4232e9 <kfun:#main(){}+0x969>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x423040 <kfun:#main(){}+0x8e0>
+               	je	0x423280 <kfun:#main(){}+0x900>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x42304e <kfun:#main(){}+0x8ee>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x42305e <kfun:#main(){}+0x8fe>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x42305e <kfun:#main(){}+0x8fe>
-               	movq	88(%r14), %rdi
-               	leaq	136(%r14), %rax
+               	jne	0x42328e <kfun:#main(){}+0x90e>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x42329e <kfun:#main(){}+0x91e>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x42329e <kfun:#main(){}+0x91e>
+               	movq	40(%rsp), %rax
+               	movq	88(%rax), %rdi
+               	addq	$136, %rax
@@@@
-               	je	0x4230bd <kfun:#main(){}+0x95d>
-               	callq	0x413730 <free@plt>
-               	movl	76(%rsp), %r8d
-               	movq	%r15, 96(%r14)
-               	movq	%r12, 88(%r14)
+               	je	0x423302 <kfun:#main(){}+0x982>
+               	callq	0x413710 <free@plt>
+               	movq	40(%rsp), %rax
+               	movq	%r15, 96(%rax)
+               	movq	%r12, 88(%rax)
@@@@
-               	je	0x4230e3 <kfun:#main(){}+0x983>
+               	movq	%r14, %rbx
+               	je	0x423330 <kfun:#main(){}+0x9b0>
@@@@
-               	movq	%rdx, %rsi
-               	jmp	0x4230ed <kfun:#main(){}+0x98d>
-               	movl	%r8d, %eax
+               	movq	%rdx, %r14
+               	jmp	0x42333f <kfun:#main(){}+0x9bf>
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
-               	je	0x423120 <kfun:#main(){}+0x9c0>
+               	je	0x423363 <kfun:#main(){}+0x9e3>
@@@@
-               	movq	%rax, (%rcx)
-               	movq	(%r12,%rsi,8), %rax
-               	movq	%rcx, (%rax)
-               	jmp	0x423163 <kfun:#main(){}+0xa03>
-               	movq	%r14, %rbp
-               	addq	$104, %rbp
-               	movq	104(%r14), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	(%r12,%r14,8), %rax
+               	movq	%rbx, (%rax)
+               	jmp	0x4233ad <kfun:#main(){}+0xa2d>
+               	movq	%r15, %rdi
+               	addq	$104, %rdi
+               	movq	104(%r15), %rax
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r15)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x42315f <kfun:#main(){}+0x9ff>
-               	movq	96(%r14), %r8
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%r8, %rdx
+               	je	0x4233a9 <kfun:#main(){}+0xa29>
+               	movq	96(%r15), %rsi
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%rsi, %rdx
@@@@
-               	je	0x423152 <kfun:#main(){}+0x9f2>
+               	je	0x42339d <kfun:#main(){}+0xa1d>
+               	movq	%rcx, %rax
@@@@
-               	divq	%r8
-               	jmp	0x423157 <kfun:#main(){}+0x9f7>
+               	divq	%rsi
+               	jmp	0x4233a1 <kfun:#main(){}+0xa21>
@@@@
-               	divl	%r8d
-               	movq	%rcx, (%r12,%rdx,8)
-               	movq	88(%r14), %r12
-               	movq	%rbp, (%r12,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	152(%rsp), %r12
-               	movq	%r13, 8(%rbx)
-               	movl	$2, 80(%rsp)
-               	leaq	-3203(%rip), %rax       # 0x422500 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal>
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
+               	leaq	-3267(%rip), %rax       # 0x422720 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumSharedULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal>
+               	movq	%rax, 72(%rsp)
+               	movq	%rdx, 80(%rsp)
+               	movq	%r13, 88(%rsp)
+               	movl	%ecx, 96(%rsp)
+               	movq	96(%rsp), %rax
@@@@
-               	movq	%r15, %rdi
-               	callq	0x43a960 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	%r12, %rdi
+               	callq	0x43b660 <Worker::putJob((anonymous namespace)::Job, bool)>
@@@@
-               	movq	%r14, %rdi
+               	movq	%r15, %rdi
@@@@
-               	movq	48(%rsp), %rbp
-               	je	0x42376f <kfun:#main(){}+0x100f>
+               	movq	48(%rsp), %r15
+               	je	0x4239da <kfun:#main(){}+0x105a>
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
-               	jae	0x42363f <kfun:#main(){}+0xedf>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
+               	jae	0x4238aa <kfun:#main(){}+0xf2a>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%r13,8)
@@@@
-               	movq	352(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x422c10 <kfun:#main(){}+0x4b0>
-               	jmp	0x4232f8 <kfun:#main(){}+0xb98>
-               	leaq	136(%r14), %r12
-               	movq	$0, 136(%r14)
-               	jmp	0x423016 <kfun:#main(){}+0x8b6>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	movq	352(%rsp), %r14
+               	cmpq	%r14, %r13
+               	jne	0x422e50 <kfun:#main(){}+0x4d0>
+               	jmp	0x423562 <kfun:#main(){}+0xbe2>
+               	movq	40(%rsp), %rax
+               	leaq	136(%rax), %r12
+               	movq	$0, 136(%rax)
+               	jmp	0x423259 <kfun:#main(){}+0x8d9>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 64(%rsp)
-               	cmpq	64(%rsp), %r15
-               	je	0x42361e <kfun:#main(){}+0xebe>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 128(%rsp)
+               	cmpq	128(%rsp), %rbp
+               	je	0x423889 <kfun:#main(){}+0xf09>
@@@@
-               	movb	277074(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax)
+               	movb	278378(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42332f <kfun:#main(){}+0xbcf>
-               	callq	0x427290 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
+               	je	0x42359f <kfun:#main(){}+0xc1f>
+               	callq	0x427930 <kotlin::mm::SuspendIfRequestedSlowPath()>
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
-               	je	0x423392 <kfun:#main(){}+0xc32>
-               	leaq	272238(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-43821(%rip), %rsi      # 0x418860 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43ca60 <CallInitGlobalPossiblyLock>
-               	movq	272135(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	104(%rsp), %rsi
-               	callq	0x41b3b0 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 104(%rsp)
-               	callq	0x43a660 <(anonymous namespace)::theState()>
+               	je	0x423607 <kfun:#main(){}+0xc87>
+               	leaq	273529(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-44130(%rip), %rsi      # 0x4189a0 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43d810 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	273423(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	88(%rsp), %rsi
+               	callq	0x41b550 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, 136(%rsp)
+               	movq	%rax, 88(%rsp)
+               	callq	0x43b360 <(anonymous namespace)::theState()>
@@@@
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x423400 <kfun:#main(){}+0xca0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x423400 <kfun:#main(){}+0xca0>
+               	testq	%rbp, %rbp
+               	je	0x423680 <kfun:#main(){}+0xd00>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x423680 <kfun:#main(){}+0xd00>
@@@@
-               	je	0x423400 <kfun:#main(){}+0xca0>
-               	movq	%rbx, %rdi
-               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x423680 <kfun:#main(){}+0xd00>
+               	movq	%rbp, %rdi
+               	callq	0x427740 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 120(%rsp)
-               	je	0x423430 <kfun:#main(){}+0xcd0>
-               	movq	%r12, %rax
+               	je	0x4236a0 <kfun:#main(){}+0xd20>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x423439 <kfun:#main(){}+0xcd9>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x4236a9 <kfun:#main(){}+0xd29>
+               	movl	%r13d, %eax
@@@@
-               	xorl	%r15d, %r15d
+               	xorl	%r12d, %r12d
@@@@
-               	je	0x423570 <kfun:#main(){}+0xe10>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x423474 <kfun:#main(){}+0xd14>
-               	testq	%rbx, %rbx
-               	jne	0x4234ae <kfun:#main(){}+0xd4e>
-               	jmp	0x423570 <kfun:#main(){}+0xe10>
+               	je	0x4237d0 <kfun:#main(){}+0xe50>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x4236e4 <kfun:#main(){}+0xd64>
+               	testq	%rbp, %rbp
+               	jne	0x42371e <kfun:#main(){}+0xd9e>
+               	jmp	0x4237d0 <kfun:#main(){}+0xe50>
@@@@
-               	jne	0x423570 <kfun:#main(){}+0xe10>
-               	cmpl	%r12d, %esi
-               	je	0x4234a5 <kfun:#main(){}+0xd45>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x423570 <kfun:#main(){}+0xe10>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423460 <kfun:#main(){}+0xd00>
-               	movq	%rsi, %rax
+               	jne	0x4237d0 <kfun:#main(){}+0xe50>
+               	cmpl	%r13d, %esi
+               	je	0x423715 <kfun:#main(){}+0xd95>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x4237d0 <kfun:#main(){}+0xe50>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4236d0 <kfun:#main(){}+0xd50>
@@@@
-               	je	0x42346f <kfun:#main(){}+0xd0f>
-               	jmp	0x423570 <kfun:#main(){}+0xe10>
-               	testq	%rbp, %rbp
-               	je	0x423570 <kfun:#main(){}+0xe10>
-               	movq	16(%rbx), %r15
+               	je	0x4236df <kfun:#main(){}+0xd5f>
+               	jmp	0x4237d0 <kfun:#main(){}+0xe50>
+               	testq	%rbx, %rbx
+               	je	0x4237d0 <kfun:#main(){}+0xe50>
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
-               	je	0x423510 <kfun:#main(){}+0xdb0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x423510 <kfun:#main(){}+0xdb0>
+               	testq	%rbp, %rbp
+               	je	0x423780 <kfun:#main(){}+0xe00>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x423780 <kfun:#main(){}+0xe00>
@@@@
-               	je	0x423510 <kfun:#main(){}+0xdb0>
-               	movq	%rbx, %rdi
-               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
-               	movl	(%r15), %r15d
+               	je	0x423780 <kfun:#main(){}+0xe00>
+               	movq	%rbp, %rdi
+               	callq	0x427740 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x423570 <kfun:#main(){}+0xe10>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x423570 <kfun:#main(){}+0xe10>
+               	testq	%rbp, %rbp
+               	je	0x4237d0 <kfun:#main(){}+0xe50>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4237d0 <kfun:#main(){}+0xe50>
@@@@
-               	je	0x423570 <kfun:#main(){}+0xe10>
-               	movq	%rbx, %rdi
-               	callq	0x4270c0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
+               	je	0x4237d0 <kfun:#main(){}+0xe50>
+               	movq	%rbp, %rdi
+               	callq	0x427740 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>

@@ -810,42 +826,43 @@
@@@[(23, 34), (35, 39), (42, 50), (51, 59), (60, 62)]@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %rbp
-               	jbe	0x42363f <kfun:#main(){}+0xedf>
-               	movslq	%r15d, %rax
-               	movq	16(%r13,%rax,8), %rax
+               	movq	136(%rsp), %rcx
+               	cmpl	%r12d, 8(%rcx)
+               	movq	48(%rsp), %r15
+               	jbe	0x4238aa <kfun:#main(){}+0xf2a>
+               	movslq	%r12d, %rax
+               	movq	16(%rcx,%rax,8), %rax
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	%rcx, 288(%rbp)
+               	movq	72(%rsp), %rcx
+               	movq	%rcx, 288(%r15)
@@@@
-               	jae	0x423644 <kfun:#main(){}+0xee4>
-               	movq	120(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
+               	jae	0x4238af <kfun:#main(){}+0xf2f>
+               	movq	120(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
@@@@
-               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
-               	movq	152(%rsp), %r12
-               	cmpq	64(%rsp), %r15
-               	jne	0x423320 <kfun:#main(){}+0xbc0>
+               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
+               	movq	144(%rsp), %rbx
+               	cmpq	128(%rsp), %rbp
+               	jne	0x423590 <kfun:#main(){}+0xc10>
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r15)

@@ -854,2409 +871,2410 @@
@@@[(15, 19), (60, 64), (82, 89), (101, 105), (130, 132), (161, 163)]@@@
-               	movl	%r12d, %edi
-               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
+               	movl	%r13d, %edi
+               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
@@@@
-               	movl	%r12d, %edi
-               	callq	0x43de90 <Kotlin_Worker_consumeFuture>
+               	movl	%r13d, %edi
+               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
@@@@
-               	callq	0x43cc60 <ThrowException>
-               	callq	0x41b310 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418d20 <ThrowWorkerAlreadyTerminated>
+               	callq	0x43da10 <ThrowException>
+               	callq	0x41b4b0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418e70 <ThrowWorkerAlreadyTerminated>
+               	callq	0x41af80 <ThrowIllegalArgumentException>
@@@@
-               	jmp	0x4237e3 <kfun:#main(){}+0x1083>
-               	movq	296(%rbp), %rdi
+               	jmp	0x423a53 <kfun:#main(){}+0x10d3>
+               	movq	296(%r15), %rdi
@@@@
-               	movq	%r14, %rdi
+               	movq	40(%rsp), %rdi
@@@@
-               	nopl	(%rax)
+               	nop
