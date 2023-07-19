--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:27.630596013 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumUIntArrayByIndices100Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:02:07.800377559 +0200

@@ -5,215 +5,222 @@
@@@[(6, 7), (8, 9), (44, 45), (50, 53), (60, 63), (64, 68), (69, 71), (72, 75), (83, 89), (90, 97), (98, 101), (116, 123), (125, 130), (157, 167), (174, 177), (195, 200), (259, 260), (261, 262), (304, 307)]@@@
+               	movaps	%xmm0, 384(%rsp)
@@@@
-               	movaps	%xmm0, 352(%rsp)
@@@@
+               	movaps	%xmm0, 240(%rsp)
@@@@
-               	movaps	%xmm0, 144(%rsp)
-               	movq	$0, 240(%rsp)
+               	movq	$0, 256(%rsp)
@@@@
-               	movq	%rcx, 160(%rsp)
-               	movq	%rax, 104(%rsp)
+               	movq	%rcx, 176(%rsp)
@@@@
+               	movq	%rax, 128(%rsp)
+               	movl	40(%rax), %r12d
+               	testl	%r12d, %r12d
+               	js	0x424888 <kfun:#main(){}+0x1128>
@@@@
+               	leaq	31(,%r12,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$824, %esi              # imm = 0x338
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
@@@@
-               	movl	$100, 24(%r15)
-               	movq	%rcx, 56(%rsp)
-               	movq	%rcx, 176(%rsp)
+               	movl	%r12d, 24(%r15)
+               	movq	%rcx, 72(%rsp)
+               	movq	%rcx, 192(%rsp)
@@@@
-               	leaq	235305(%rip), %r12      # 0x45cdb0 <ktypeglobal:kotlin.IntArray#internal>
-               	movq	%r14, 48(%rsp)
-               	cmpq	$100, %r13
-               	je	0x42376b <kfun:#main(){}+0x26b>
+               	movq	%r14, 56(%rsp)
+               	cmpq	%r12, %r13
+               	je	0x4239da <kfun:#main(){}+0x27a>
@@@@
-               	movb	288466(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax,%rax)
+               	movb	289770(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%r12, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%rbx, 184(%rsp)
+               	leaq	236511(%rip), %rax      # 0x45d530 <ktypeglobal:kotlin.IntArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	$10000, 24(%rbp)        # imm = 0x2710
+               	movq	%rbx, 200(%rsp)
@@@@
-               	je	0x423732 <kfun:#main(){}+0x232>
-               	nopl	(%rax)
-               	movzbl	288369(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x4239a2 <kfun:#main(){}+0x242>
+               	movzbl	289673(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	48(%rsp), %r14
-               	cmpq	$100, %r13
-               	jne	0x4236a0 <kfun:#main(){}+0x1a0>
-               	movq	104(%rsp), %rax
-               	movq	56(%rsp), %rcx
+               	movq	56(%rsp), %r14
+               	cmpq	%r12, %r13
+               	jne	0x423910 <kfun:#main(){}+0x1b0>
+               	movq	128(%rsp), %rax
+               	movq	72(%rsp), %rcx
@@@@
-               	andq	$-8, %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	je	0x423934 <kfun:#main(){}+0x434>
-               	movzbl	288145(%rip), %eax      # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x423bb4 <kfun:#main(){}+0x454>
+               	nopl	(%rax,%rax)
+               	movzbl	289433(%rip), %eax      # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	movq	152(%rsp), %rax
+               	movq	168(%rsp), %rax
+               	movq	%rax, 288(%r14)

@@ -221,120 +228,123 @@
@@@[(3, 10), (12, 20), (21, 23), (26, 30), (32, 44), (45, 56), (69, 75), (117, 134), (135, 143), (145, 159), (165, 171), (173, 175), (177, 181)]@@@
-               	movq	$0, 272(%rsp)
-               	movq	%rax, 152(%rsp)
-               	leaq	144(%rsp), %rax
+               	movq	$0, 288(%rsp)
+               	movq	288(%r14), %rax
+               	movq	%rax, 168(%rsp)
+               	leaq	160(%rsp), %rax
@@@@
-               	movq	%rax, 160(%rsp)
-               	movl	40(%rcx), %ebx
-               	testl	%ebx, %ebx
-               	js	0x4245da <kfun:#main(){}+0x10da>
+               	movq	%rax, 176(%rsp)
+               	movl	40(%rcx), %ebp
+               	testl	%ebp, %ebp
+               	js	0x424888 <kfun:#main(){}+0x1128>
@@@@
-               	leaq	31(,%rbx,8), %rsi
+               	leaq	31(,%rbp,8), %rsi
@@@@
-               	callq	0x42b6b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42bf90 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	234110(%rip), %rcx      # 0x45cc90 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
-               	movq	%rax, 176(%rsp)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	235376(%rip), %rcx      # 0x45d410 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%ebp, 24(%rbx)
+               	movq	%rax, 192(%rsp)
@@@@
-               	movq	%r12, 136(%rsp)
-               	movq	%rbx, 336(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x42413a <kfun:#main(){}+0xc3a>
-               	movb	287538(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rbx, 72(%rsp)
+               	movq	%rbp, 352(%rsp)
+               	cmpq	%rbp, %r13
+               	je	0x424406 <kfun:#main(){}+0xca6>
+               	nopl	(%rax,%rax)
+               	movb	288810(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%rax, 184(%rsp)
-               	movslq	8(%rax), %r15
-               	movl	282757(%rip), %eax      # 0x468b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movq	%rax, 200(%rsp)
+               	movl	8(%rax), %r15d
+               	movl	284018(%rip), %eax      # 0x469280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	%rax, 296(%rsp)
-               	leaq	304(%rsp), %rsi
-               	callq	0x418f80 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x428740 <CreateStablePointer>
-               	movq	%rax, 120(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x43b490 <(anonymous namespace)::theState()>
+               	movq	%rax, 312(%rsp)
+               	leaq	320(%rsp), %rsi
+               	callq	0x4190d0 <WorkerLaunchpad>
+               	movslq	%r15d, %r12
+               	movq	320(%rsp), %rdi
+               	callq	0x428ea0 <CreateStablePointer>
+               	movq	%rax, 136(%rsp)
+               	movq	$0, 320(%rsp)
+               	callq	0x43c200 <(anonymous namespace)::theState()>
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
-               	je	0x423bb0 <kfun:#main(){}+0x6b0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x423bb0 <kfun:#main(){}+0x6b0>
+               	testq	%rbx, %rbx
+               	je	0x423e50 <kfun:#main(){}+0x6f0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x423e50 <kfun:#main(){}+0x6f0>
@@@@
-               	je	0x423bb0 <kfun:#main(){}+0x6b0>
-               	movq	%rbp, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x423e50 <kfun:#main(){}+0x6f0>
+               	movq	%rbx, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	je	0x423bf0 <kfun:#main(){}+0x6f0>
-               	movq	%r15, %rax
+               	je	0x423e90 <kfun:#main(){}+0x730>
+               	movq	%r12, %rax

@@ -343,159 +353,161 @@
@@@[(26, 40), (48, 53), (57, 61), (64, 70), (73, 75), (77, 79), (100, 113), (124, 126), (127, 129), (137, 139), (140, 142), (143, 157), (161, 165), (166, 188), (190, 196), (197, 209), (211, 212), (225, 228), (229, 231)]@@@
-               	je	0x423d10 <kfun:#main(){}+0x810>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423c20 <kfun:#main(){}+0x720>
-               	movq	%rsi, %rax
+               	je	0x423fb0 <kfun:#main(){}+0x850>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423ec0 <kfun:#main(){}+0x760>
@@@@
-               	je	0x423d10 <kfun:#main(){}+0x810>
-               	movq	16(%rbp), %rax
-               	movq	%rax, 328(%rsp)
+               	je	0x423fb0 <kfun:#main(){}+0x850>
+               	movq	16(%rbp), %r15
@@@@
-               	je	0x423d18 <kfun:#main(){}+0x818>
-               	movq	%rax, %r15
+               	je	0x423fb8 <kfun:#main(){}+0x858>
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
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x423d1b <kfun:#main(){}+0x81b>
-               	nop
-               	xorl	%r15d, %r15d
-               	jmp	0x424017 <kfun:#main(){}+0xb17>
-               	xorl	%r15d, %r15d
-               	movl	4(%r15), %r8d
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x423fbb <kfun:#main(){}+0x85b>
+               	xorl	%r12d, %r12d
+               	jmp	0x4242cb <kfun:#main(){}+0xb6b>
+               	xorl	%r12d, %r12d
+               	movl	4(%r12), %r8d
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
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x423d90 <kfun:#main(){}+0x890>
-               	testq	%rbx, %rbx
-               	jne	0x423dbf <kfun:#main(){}+0x8bf>
-               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x424030 <kfun:#main(){}+0x8d0>
+               	testq	%rbp, %rbp
+               	jne	0x42405f <kfun:#main(){}+0x8ff>
+               	jmp	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x423dc8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	jne	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	je	0x423dba <kfun:#main(){}+0x8ba>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423d80 <kfun:#main(){}+0x880>
-               	movq	%rcx, %rax
+               	je	0x42405a <kfun:#main(){}+0x8fa>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x424020 <kfun:#main(){}+0x8c0>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x423d8b <kfun:#main(){}+0x88b>
-               	jmp	0x423dc8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	je	0x42402b <kfun:#main(){}+0x8cb>
+               	jmp	0x424077 <kfun:#main(){}+0x917>
@@@@
-               	je	0x423dc8 <kfun:#main(){}+0x8c8>
-               	addq	$8, %rbx
-               	jmp	0x423fbe <kfun:#main(){}+0xabe>
-               	movl	%r8d, %ebx
-               	movq	%r15, 320(%rsp)
+               	je	0x424077 <kfun:#main(){}+0x917>
+               	addq	$8, %rbp
+               	movl	144(%rsp), %ecx
+               	movq	136(%rsp), %rdx
+               	jmp	0x424280 <kfun:#main(){}+0xb20>
+               	movq	%rbx, %rbp
+               	movq	%r15, 344(%rsp)
@@@@
+               	movl	%r8d, %ebx
@@@@
-               	jne	0x423e1c <kfun:#main(){}+0x91c>
+               	movq	%r12, 336(%rsp)
+               	jne	0x4240d9 <kfun:#main(){}+0x979>
@@@@
-               	movq	112(%rsp), %rdi
+               	movq	152(%rsp), %rbx

@@ -504,254 +516,262 @@
@@@[(3, 6), (7, 19), (26, 28), (29, 48), (50, 53), (57, 81), (84, 89), (101, 105), (108, 114), (121, 123), (124, 132), (133, 138), (139, 150), (151, 154), (155, 159), (160, 164), (165, 193), (200, 206), (232, 242), (244, 245), (246, 247), (274, 277), (278, 285), (286, 299), (300, 312), (313, 324), (325, 326), (327, 328), (340, 361), (362, 370), (372, 386), (392, 398), (400, 402), (404, 409), (412, 417)]@@@
-               	movq	104(%r14), %rbx
+               	movl	68(%rsp), %r8d
+               	movq	104(%r14), %rbp
@@@@
-               	testq	%rbx, %rbx
-               	je	0x423efa <kfun:#main(){}+0x9fa>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x423e96 <kfun:#main(){}+0x996>
-               	nopl	(%rax,%rax)
+               	testq	%rbp, %rbp
+               	je	0x424199 <kfun:#main(){}+0xa39>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x424156 <kfun:#main(){}+0x9f6>
+               	nopl	(%rax)
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x423efa <kfun:#main(){}+0x9fa>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x424199 <kfun:#main(){}+0xa39>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x423e70 <kfun:#main(){}+0x970>
+               	je	0x424130 <kfun:#main(){}+0x9d0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x423e7e <kfun:#main(){}+0x97e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x423e8e <kfun:#main(){}+0x98e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x423e8e <kfun:#main(){}+0x98e>
-               	leaq	136(%r14), %r12
-               	movq	$0, 136(%r14)
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	jne	0x423e60 <kfun:#main(){}+0x960>
+               	jne	0x42413e <kfun:#main(){}+0x9de>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x42414e <kfun:#main(){}+0x9ee>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x42414e <kfun:#main(){}+0x9ee>
@@@@
-               	je	0x423f0f <kfun:#main(){}+0xa0f>
-               	callq	0x413730 <free@plt>
+               	je	0x4241b3 <kfun:#main(){}+0xa53>
+               	callq	0x413710 <free@plt>
+               	movl	68(%rsp), %r8d
@@@@
-               	jmp	0x423f43 <kfun:#main(){}+0xa43>
-               	movl	132(%rsp), %eax
+               	jmp	0x4241e3 <kfun:#main(){}+0xa83>
+               	movl	%r8d, %eax
@@@@
-               	movq	112(%rsp), %rdi
-               	movq	%rdi, %rbx
-               	addq	$8, %rbx
+               	movq	152(%rsp), %rbx
+               	movq	%rbx, %rbp
+               	addq	$8, %rbp
@@@@
-               	movq	%rax, (%rdi)
+               	movq	%rax, (%rbx)
@@@@
-               	movq	%rdi, (%rax)
-               	jmp	0x423fb1 <kfun:#main(){}+0xab1>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rbx, (%rax)
+               	jmp	0x42425d <kfun:#main(){}+0xafd>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdi)
-               	movq	%rdi, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r14)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x423fad <kfun:#main(){}+0xaad>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x424259 <kfun:#main(){}+0xaf9>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x423fa1 <kfun:#main(){}+0xaa1>
+               	je	0x42424c <kfun:#main(){}+0xaec>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x423fa5 <kfun:#main(){}+0xaa5>
+               	divq	%r8
+               	jmp	0x424251 <kfun:#main(){}+0xaf1>
@@@@
-               	divl	%ebp
-               	movq	%rdi, (%r12,%rdx,8)
+               	divl	%r8d
+               	movq	%rbx, (%r12,%rdx,8)
@@@@
-               	movq	%rcx, (%r12,%rsi,8)
-               	addq	$1, 112(%r14)
-               	movq	136(%rsp), %r12
-               	movq	%r15, 8(%rbx)
-               	movl	$2, 64(%rsp)
-               	leaq	-3489(%rip), %rax       # 0x423230 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal>
-               	movq	%rax, 72(%rsp)
-               	movq	120(%rsp), %rax
-               	movq	%rax, 80(%rsp)
-               	movq	%r15, 88(%rsp)
-               	movl	56(%rsp), %eax
-               	movl	%eax, 96(%rsp)
-               	movq	96(%rsp), %rax
+               	movq	%rdi, (%r12,%rsi,8)
+               	movq	112(%r14), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r14)
+               	movl	144(%rsp), %ecx
+               	movq	136(%rsp), %rdx
+               	movq	336(%rsp), %r12
+               	movq	%r12, 8(%rbp)
+               	movl	$2, 80(%rsp)
+               	leaq	-3619(%rip), %rax       # 0x423470 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumUIntArrayByIndicesWorkers$lambda$1#static(kotlin.UIntArray){}kotlin.ULong#internal>
+               	movq	%rax, 88(%rsp)
+               	movq	%rdx, 96(%rsp)
+               	movq	%r12, 104(%rsp)
+               	movl	%ecx, 112(%rsp)
+               	movq	112(%rsp), %rax
@@@@
-               	movq	328(%rsp), %rdi
-               	callq	0x43b790 <Worker::putJob((anonymous namespace)::Job, bool)>
-               	movq	40(%rsp), %rax
+               	movq	%r15, %rdi
+               	callq	0x43c500 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	48(%rsp), %rax
@@@@
-               	testq	%r15, %r15
-               	movq	48(%rsp), %r14
-               	je	0x42459f <kfun:#main(){}+0x109f>
-               	movl	4(%r15), %ebx
-               	movq	288(%rsp), %rax
+               	testq	%r12, %r12
+               	movq	56(%rsp), %r14
+               	je	0x424883 <kfun:#main(){}+0x1123>
+               	movl	4(%r12), %ebx
+               	movq	304(%rsp), %rax
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	movl	24(%r12), %eax
+               	movq	72(%rsp), %rbx
+               	movl	24(%rbx), %eax
@@@@
-               	jae	0x42446f <kfun:#main(){}+0xf6f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
+               	movq	352(%rsp), %rbp
+               	jae	0x424753 <kfun:#main(){}+0xff3>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%r13,8)
@@@@
-               	movq	336(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x423a40 <kfun:#main(){}+0x540>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	cmpq	%rbp, %r13
+               	jne	0x423cd0 <kfun:#main(){}+0x570>
+               	jmp	0x424406 <kfun:#main(){}+0xca6>
+               	leaq	136(%r14), %r12
+               	movq	$0, 136(%r14)
+               	jmp	0x424108 <kfun:#main(){}+0x9a8>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 120(%rsp)
-               	cmpq	120(%rsp), %r15
-               	je	0x42444e <kfun:#main(){}+0xf4e>
-               	nopl	(%rax,%rax)
-               	movb	285714(%rip), %al       # 0x469d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 136(%rsp)
+               	cmpq	136(%rsp), %rbp
+               	je	0x424732 <kfun:#main(){}+0xfd2>
+               	nopw	%cs:(%rax,%rax)
+               	movb	286922(%rip), %al       # 0x46a500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42416f <kfun:#main(){}+0xc6f>
-               	callq	0x4280c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
-               	movq	%rax, 216(%rsp)
-               	movslq	8(%rax), %r12
+               	je	0x42443f <kfun:#main(){}+0xcdf>
+               	callq	0x4287d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 144(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
+               	movq	%rax, 232(%rsp)
+               	movl	8(%rax), %r13d
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	je	0x4241d2 <kfun:#main(){}+0xcd2>
-               	leaq	280878(%rip), %rdi      # 0x468af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-47277(%rip), %rsi      # 0x418920 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43d890 <CallInitGlobalPossiblyLock>
-               	movq	280775(%rip), %rdi      # 0x468aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	88(%rsp), %rsi
-               	callq	0x41b470 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 88(%rsp)
-               	callq	0x43b490 <(anonymous namespace)::theState()>
+               	je	0x4244aa <kfun:#main(){}+0xd4a>
+               	leaq	282070(%rip), %rdi      # 0x469274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-47685(%rip), %rsi      # 0x418a60 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43e6b0 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	281964(%rip), %rdi      # 0x469220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	104(%rsp), %rsi
+               	callq	0x41b610 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r12
+               	movq	%rax, 104(%rsp)
+               	callq	0x43c200 <(anonymous namespace)::theState()>
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
-               	je	0x424240 <kfun:#main(){}+0xd40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x424240 <kfun:#main(){}+0xd40>
+               	testq	%rbp, %rbp
+               	je	0x424520 <kfun:#main(){}+0xdc0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424520 <kfun:#main(){}+0xdc0>
@@@@
-               	je	0x424240 <kfun:#main(){}+0xd40>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424520 <kfun:#main(){}+0xdc0>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 56(%rsp)
-               	je	0x424270 <kfun:#main(){}+0xd70>
-               	movq	%r12, %rax
+               	je	0x424540 <kfun:#main(){}+0xde0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x424279 <kfun:#main(){}+0xd79>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x424549 <kfun:#main(){}+0xde9>
+               	movl	%r13d, %eax

@@ -759,126 +779,126 @@
@@@[(3, 17), (21, 47), (50, 60), (61, 71), (72, 86), (92, 98), (100, 110), (111, 125), (131, 137), (166, 172), (173, 179), (183, 203)]@@@
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x4242b4 <kfun:#main(){}+0xdb4>
-               	testq	%rbx, %rbx
-               	jne	0x4242ee <kfun:#main(){}+0xdee>
-               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x424584 <kfun:#main(){}+0xe24>
+               	testq	%rbp, %rbp
+               	jne	0x4245be <kfun:#main(){}+0xe5e>
+               	jmp	0x424680 <kfun:#main(){}+0xf20>
@@@@
-               	jne	0x4243a0 <kfun:#main(){}+0xea0>
-               	cmpl	%r12d, %esi
-               	je	0x4242e5 <kfun:#main(){}+0xde5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4242a0 <kfun:#main(){}+0xda0>
-               	movq	%rsi, %rax
+               	jne	0x424680 <kfun:#main(){}+0xf20>
+               	cmpl	%r13d, %esi
+               	je	0x4245b5 <kfun:#main(){}+0xe55>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x424570 <kfun:#main(){}+0xe10>
@@@@
-               	je	0x4242af <kfun:#main(){}+0xdaf>
-               	jmp	0x4243a0 <kfun:#main(){}+0xea0>
-               	testq	%rbp, %rbp
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	16(%rbx), %r15
+               	je	0x42457f <kfun:#main(){}+0xe1f>
+               	jmp	0x424680 <kfun:#main(){}+0xf20>
+               	testq	%rbx, %rbx
+               	je	0x424680 <kfun:#main(){}+0xf20>
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
+               	movq	%rdi, 128(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x424350 <kfun:#main(){}+0xe50>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x424350 <kfun:#main(){}+0xe50>
+               	testq	%rbp, %rbp
+               	je	0x424620 <kfun:#main(){}+0xec0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424620 <kfun:#main(){}+0xec0>
@@@@
-               	je	0x424350 <kfun:#main(){}+0xe50>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424620 <kfun:#main(){}+0xec0>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	40(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	104(%rsp), %rdi
+               	movq	48(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	128(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4243a0 <kfun:#main(){}+0xea0>
+               	testq	%rbp, %rbp
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x424680 <kfun:#main(){}+0xf20>
@@@@
-               	je	0x4243a0 <kfun:#main(){}+0xea0>
-               	movq	%rbx, %rdi
-               	callq	0x427ef0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x424680 <kfun:#main(){}+0xf20>
+               	movq	%rbp, %rdi
+               	callq	0x4285e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %r14
-               	jbe	0x42446f <kfun:#main(){}+0xf6f>
+               	cmpl	%r15d, 8(%r12)
+               	movq	56(%rsp), %r14
+               	jbe	0x424753 <kfun:#main(){}+0xff3>
@@@@
-               	movq	16(%r13,%rax,8), %rax
-               	movq	%rax, 224(%rsp)
-               	movq	72(%rsp), %rcx
+               	movq	16(%r12,%rax,8), %rax
+               	movq	%rax, 240(%rsp)
+               	movq	88(%rsp), %rcx
@@@@
-               	jae	0x424474 <kfun:#main(){}+0xf74>
-               	movq	56(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
-               	leaq	232(%rsp), %rsi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	136(%rsp), %r12
-               	cmpq	120(%rsp), %r15
-               	jne	0x424160 <kfun:#main(){}+0xc60>
-               	movq	360(%rsp), %rax
+               	movq	72(%rsp), %rbx
+               	jae	0x424758 <kfun:#main(){}+0xff8>
+               	movq	144(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
+               	leaq	248(%rsp), %rsi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	cmpq	136(%rsp), %rbp
+               	jne	0x424430 <kfun:#main(){}+0xcd0>
+               	movq	376(%rsp), %rax

@@ -886,2408 +906,2408 @@
@@@[(12, 22), (62, 72), (170, 172)]@@@
-               	jne	0x42459a <kfun:#main(){}+0x109a>
-               	leaq	264(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	jne	0x42487e <kfun:#main(){}+0x111e>
+               	leaq	280(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	callq	0x43da90 <ThrowException>
-               	leaq	248(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43ecc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	callq	0x43e8b0 <ThrowException>
+               	leaq	264(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43fb60 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)
