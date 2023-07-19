--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumULongArray5Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:50:10.910600759 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.sumULongArray5Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 03:01:52.730382077 +0200

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
+               	js	0x423b58 <kfun:#main(){}+0x1128>
@@@@
+               	leaq	31(,%r12,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$64, %esi
-               	callq	0x42a9b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x42b260 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
@@@@
-               	movl	$5, 24(%r15)
-               	movq	%rcx, 56(%rsp)
-               	movq	%rcx, 176(%rsp)
+               	movl	%r12d, 24(%r15)
+               	movq	%rcx, 72(%rsp)
+               	movq	%rcx, 192(%rsp)
@@@@
-               	leaq	232761(%rip), %r12      # 0x45b6c0 <ktypeglobal:kotlin.LongArray#internal>
-               	movq	%r14, 48(%rsp)
-               	cmpq	$5, %r13
-               	je	0x422a6b <kfun:#main(){}+0x26b>
+               	movq	%r14, 56(%rsp)
+               	cmpq	%r12, %r13
+               	je	0x422caa <kfun:#main(){}+0x27a>
@@@@
-               	movb	279506(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	nopl	(%rax,%rax)
+               	movb	280858(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%r12, 16(%rax)
-               	movl	$10000, 24(%rax)        # imm = 0x2710
-               	movq	%rbx, 184(%rsp)
+               	leaq	234015(%rip), %rax      # 0x45be40 <ktypeglobal:kotlin.LongArray#internal>
+               	movq	%rax, 16(%rbp)
+               	movl	$10000, 24(%rbp)        # imm = 0x2710
+               	movq	%rbx, 200(%rsp)
@@@@
-               	je	0x422a32 <kfun:#main(){}+0x232>
-               	nopl	(%rax)
-               	movzbl	279409(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x422c72 <kfun:#main(){}+0x242>
+               	movzbl	280761(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	48(%rsp), %r14
-               	cmpq	$5, %r13
-               	jne	0x4229a0 <kfun:#main(){}+0x1a0>
-               	movq	104(%rsp), %rax
-               	movq	56(%rsp), %rcx
+               	movq	56(%rsp), %r14
+               	cmpq	%r12, %r13
+               	jne	0x422be0 <kfun:#main(){}+0x1b0>
+               	movq	128(%rsp), %rax
+               	movq	72(%rsp), %rcx
@@@@
-               	andq	$-8, %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	je	0x422c34 <kfun:#main(){}+0x434>
-               	movzbl	279185(%rip), %eax      # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	je	0x422e84 <kfun:#main(){}+0x454>
+               	nopl	(%rax,%rax)
+               	movzbl	280521(%rip), %eax      # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
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
-               	js	0x4238da <kfun:#main(){}+0x10da>
+               	movq	%rax, 176(%rsp)
+               	movl	40(%rcx), %ebp
+               	testl	%ebp, %ebp
+               	js	0x423b58 <kfun:#main(){}+0x1128>
@@@@
-               	leaq	31(,%rbx,8), %rsi
+               	leaq	31(,%rbp,8), %rsi
@@@@
-               	callq	0x42a9b0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42b260 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	231422(%rip), %rcx      # 0x45b510 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
-               	movq	%rax, 176(%rsp)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	232736(%rip), %rcx      # 0x45bc90 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%ebp, 24(%rbx)
+               	movq	%rax, 192(%rsp)
@@@@
-               	movq	%r12, 136(%rsp)
-               	movq	%rbx, 336(%rsp)
-               	cmpq	%rbx, %r13
-               	je	0x42343a <kfun:#main(){}+0xc3a>
-               	movb	278578(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	movq	%rbx, 72(%rsp)
+               	movq	%rbp, 352(%rsp)
+               	cmpq	%rbp, %r13
+               	je	0x4236d6 <kfun:#main(){}+0xca6>
+               	nopl	(%rax,%rax)
+               	movb	279898(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movq	%rax, 184(%rsp)
-               	movslq	8(%rax), %r15
-               	movl	273797(%rip), %eax      # 0x465b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movq	%rax, 200(%rsp)
+               	movl	8(%rax), %r15d
+               	movl	275106(%rip), %eax      # 0x466280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	movq	%rax, 296(%rsp)
-               	leaq	304(%rsp), %rsi
-               	callq	0x418ec0 <WorkerLaunchpad>
-               	movq	304(%rsp), %rdi
-               	callq	0x427a40 <CreateStablePointer>
-               	movq	%rax, 120(%rsp)
-               	movq	$0, 304(%rsp)
-               	callq	0x43a790 <(anonymous namespace)::theState()>
+               	movq	%rax, 312(%rsp)
+               	leaq	320(%rsp), %rsi
+               	callq	0x419010 <WorkerLaunchpad>
+               	movslq	%r15d, %r12
+               	movq	320(%rsp), %rdi
+               	callq	0x428170 <CreateStablePointer>
+               	movq	%rax, 136(%rsp)
+               	movq	$0, 320(%rsp)
+               	callq	0x43b4d0 <(anonymous namespace)::theState()>
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
-               	je	0x422eb0 <kfun:#main(){}+0x6b0>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x422eb0 <kfun:#main(){}+0x6b0>
+               	testq	%rbx, %rbx
+               	je	0x423120 <kfun:#main(){}+0x6f0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x423120 <kfun:#main(){}+0x6f0>
@@@@
-               	je	0x422eb0 <kfun:#main(){}+0x6b0>
-               	movq	%rbp, %rdi
-               	callq	0x4271f0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x423120 <kfun:#main(){}+0x6f0>
+               	movq	%rbx, %rdi
+               	callq	0x4278b0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r15, %rax
+               	movq	%r12, %rax
@@@@
-               	je	0x422ef0 <kfun:#main(){}+0x6f0>
-               	movq	%r15, %rax
+               	je	0x423160 <kfun:#main(){}+0x730>
+               	movq	%r12, %rax

@@ -343,159 +353,161 @@
@@@[(26, 40), (48, 53), (57, 61), (64, 70), (73, 75), (77, 79), (100, 113), (124, 126), (127, 129), (137, 139), (140, 142), (143, 157), (161, 165), (166, 188), (190, 196), (197, 209), (211, 212), (225, 228), (229, 231)]@@@
-               	je	0x423010 <kfun:#main(){}+0x810>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x422f20 <kfun:#main(){}+0x720>
-               	movq	%rsi, %rax
+               	je	0x423280 <kfun:#main(){}+0x850>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423190 <kfun:#main(){}+0x760>
@@@@
-               	je	0x423010 <kfun:#main(){}+0x810>
-               	movq	16(%rbp), %rax
-               	movq	%rax, 328(%rsp)
+               	je	0x423280 <kfun:#main(){}+0x850>
+               	movq	16(%rbp), %r15
@@@@
-               	je	0x423018 <kfun:#main(){}+0x818>
-               	movq	%rax, %r15
+               	je	0x423288 <kfun:#main(){}+0x858>
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
-               	callq	0x4271f0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x42301b <kfun:#main(){}+0x81b>
-               	nop
-               	xorl	%r15d, %r15d
-               	jmp	0x423317 <kfun:#main(){}+0xb17>
-               	xorl	%r15d, %r15d
-               	movl	4(%r15), %r8d
+               	callq	0x4278b0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x42328b <kfun:#main(){}+0x85b>
+               	xorl	%r12d, %r12d
+               	jmp	0x42359b <kfun:#main(){}+0xb6b>
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
-               	je	0x4230c8 <kfun:#main(){}+0x8c8>
-               	movq	(%rax), %rbx
-               	cmpl	8(%rbx), %r8d
-               	jne	0x423090 <kfun:#main(){}+0x890>
-               	testq	%rbx, %rbx
-               	jne	0x4230bf <kfun:#main(){}+0x8bf>
-               	jmp	0x4230c8 <kfun:#main(){}+0x8c8>
+               	je	0x423347 <kfun:#main(){}+0x917>
+               	movq	(%rax), %rbp
+               	cmpl	8(%rbp), %r8d
+               	jne	0x423300 <kfun:#main(){}+0x8d0>
+               	testq	%rbp, %rbp
+               	jne	0x42332f <kfun:#main(){}+0x8ff>
+               	jmp	0x423347 <kfun:#main(){}+0x917>
@@@@
-               	cmpq	%rbp, %rdx
-               	jne	0x4230c8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	jne	0x423347 <kfun:#main(){}+0x917>
@@@@
-               	je	0x4230ba <kfun:#main(){}+0x8ba>
-               	movq	%rbx, %rsi
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4230c8 <kfun:#main(){}+0x8c8>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x423080 <kfun:#main(){}+0x880>
-               	movq	%rcx, %rax
+               	je	0x42332a <kfun:#main(){}+0x8fa>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x423347 <kfun:#main(){}+0x917>
+               	movl	8(%rbp), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4232f0 <kfun:#main(){}+0x8c0>
@@@@
-               	cmpq	%rbp, %rdx
-               	je	0x42308b <kfun:#main(){}+0x88b>
-               	jmp	0x4230c8 <kfun:#main(){}+0x8c8>
+               	cmpq	%rbx, %rdx
+               	je	0x4232fb <kfun:#main(){}+0x8cb>
+               	jmp	0x423347 <kfun:#main(){}+0x917>
@@@@
-               	je	0x4230c8 <kfun:#main(){}+0x8c8>
-               	addq	$8, %rbx
-               	jmp	0x4232be <kfun:#main(){}+0xabe>
-               	movl	%r8d, %ebx
-               	movq	%r15, 320(%rsp)
+               	je	0x423347 <kfun:#main(){}+0x917>
+               	addq	$8, %rbp
+               	movl	144(%rsp), %ecx
+               	movq	136(%rsp), %rdx
+               	jmp	0x423550 <kfun:#main(){}+0xb20>
+               	movq	%rbx, %rbp
+               	movq	%r15, 344(%rsp)
@@@@
+               	movl	%r8d, %ebx
@@@@
-               	jne	0x42311c <kfun:#main(){}+0x91c>
+               	movq	%r12, 336(%rsp)
+               	jne	0x4233a9 <kfun:#main(){}+0x979>
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
-               	je	0x4231fa <kfun:#main(){}+0x9fa>
-               	leaq	104(%r14), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x423196 <kfun:#main(){}+0x996>
-               	nopl	(%rax,%rax)
+               	testq	%rbp, %rbp
+               	je	0x423469 <kfun:#main(){}+0xa39>
+               	leaq	104(%r14), %rdi
+               	xorl	%ebx, %ebx
+               	jmp	0x423426 <kfun:#main(){}+0x9f6>
+               	nopl	(%rax)
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbx, %rbx
-               	je	0x4231fa <kfun:#main(){}+0x9fa>
-               	movq	%rbx, %rcx
-               	movq	(%rbx), %rbx
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbx, %rdx
+               	movq	%rdx, %rbx
+               	testq	%rbp, %rbp
+               	je	0x423469 <kfun:#main(){}+0xa39>
+               	movq	%rbp, %rsi
+               	movq	(%rbp), %rbp
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x423170 <kfun:#main(){}+0x970>
+               	je	0x423400 <kfun:#main(){}+0x9d0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x42317e <kfun:#main(){}+0x97e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x42318e <kfun:#main(){}+0x98e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x42318e <kfun:#main(){}+0x98e>
-               	leaq	136(%r14), %r12
-               	movq	$0, 136(%r14)
-               	movq	104(%r14), %rbx
-               	movq	$0, 104(%r14)
-               	testq	%rbx, %rbx
-               	jne	0x423160 <kfun:#main(){}+0x960>
+               	jne	0x42340e <kfun:#main(){}+0x9de>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x42341e <kfun:#main(){}+0x9ee>
+               	movq	%rsi, (%r12,%rbx,8)
+               	jmp	0x42341e <kfun:#main(){}+0x9ee>
@@@@
-               	je	0x42320f <kfun:#main(){}+0xa0f>
-               	callq	0x413730 <free@plt>
+               	je	0x423483 <kfun:#main(){}+0xa53>
+               	callq	0x413710 <free@plt>
+               	movl	68(%rsp), %r8d
@@@@
-               	jmp	0x423243 <kfun:#main(){}+0xa43>
-               	movl	132(%rsp), %eax
+               	jmp	0x4234b3 <kfun:#main(){}+0xa83>
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
-               	jmp	0x4232b1 <kfun:#main(){}+0xab1>
-               	movq	%r14, %rcx
-               	addq	$104, %rcx
+               	movq	%rbx, (%rax)
+               	jmp	0x42352d <kfun:#main(){}+0xafd>
+               	movq	%r14, %rdi
+               	addq	$104, %rdi
@@@@
-               	movq	%rax, (%rdi)
-               	movq	%rdi, 104(%r14)
+               	movq	%rax, (%rbx)
+               	movq	%rbx, 104(%r14)
+               	movq	(%rbx), %rax
@@@@
-               	je	0x4232ad <kfun:#main(){}+0xaad>
-               	movq	96(%r14), %rbp
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
-               	orq	%rbp, %rdx
+               	je	0x423529 <kfun:#main(){}+0xaf9>
+               	movq	96(%r14), %r8
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
+               	orq	%r8, %rdx
@@@@
-               	je	0x4232a1 <kfun:#main(){}+0xaa1>
+               	je	0x42351c <kfun:#main(){}+0xaec>
+               	movq	%rcx, %rax
@@@@
-               	divq	%rbp
-               	jmp	0x4232a5 <kfun:#main(){}+0xaa5>
+               	divq	%r8
+               	jmp	0x423521 <kfun:#main(){}+0xaf1>
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
-               	leaq	-3345(%rip), %rax       # 0x4225c0 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal>
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
+               	leaq	-3459(%rip), %rax       # 0x4227e0 <kfun:MultithreadedLoopsBenchmark.$<bridge-BNNB>runSumULongArrayWorkers$lambda$1#static(kotlin.ULongArray){}kotlin.ULong#internal>
+               	movq	%rax, 88(%rsp)
+               	movq	%rdx, 96(%rsp)
+               	movq	%r12, 104(%rsp)
+               	movl	%ecx, 112(%rsp)
+               	movq	112(%rsp), %rax
@@@@
-               	movq	328(%rsp), %rdi
-               	callq	0x43aa90 <Worker::putJob((anonymous namespace)::Job, bool)>
-               	movq	40(%rsp), %rax
+               	movq	%r15, %rdi
+               	callq	0x43b7d0 <Worker::putJob((anonymous namespace)::Job, bool)>
+               	movq	48(%rsp), %rax
@@@@
-               	testq	%r15, %r15
-               	movq	48(%rsp), %r14
-               	je	0x42389f <kfun:#main(){}+0x109f>
-               	movl	4(%r15), %ebx
-               	movq	288(%rsp), %rax
+               	testq	%r12, %r12
+               	movq	56(%rsp), %r14
+               	je	0x423b53 <kfun:#main(){}+0x1123>
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
-               	jae	0x42376f <kfun:#main(){}+0xf6f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r13,8)
+               	movq	352(%rsp), %rbp
+               	jae	0x423a23 <kfun:#main(){}+0xff3>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%r13,8)
@@@@
-               	movq	336(%rsp), %rbx
-               	cmpq	%rbx, %r13
-               	jne	0x422d40 <kfun:#main(){}+0x540>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	cmpq	%rbp, %r13
+               	jne	0x422fa0 <kfun:#main(){}+0x570>
+               	jmp	0x4236d6 <kfun:#main(){}+0xca6>
+               	leaq	136(%r14), %r12
+               	movq	$0, 136(%r14)
+               	jmp	0x4233d8 <kfun:#main(){}+0x9a8>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 120(%rsp)
-               	cmpq	120(%rsp), %r15
-               	je	0x42374e <kfun:#main(){}+0xf4e>
-               	nopl	(%rax,%rax)
-               	movb	276754(%rip), %al       # 0x466d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 136(%rsp)
+               	cmpq	136(%rsp), %rbp
+               	je	0x423a02 <kfun:#main(){}+0xfd2>
+               	nopw	%cs:(%rax,%rax)
+               	movb	278010(%rip), %al       # 0x467500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42346f <kfun:#main(){}+0xc6f>
-               	callq	0x4273c0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
-               	movq	%rax, 216(%rsp)
-               	movslq	8(%rax), %r12
+               	je	0x42370f <kfun:#main(){}+0xcdf>
+               	callq	0x427aa0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 144(%rsp)
+               	movq	32(%rbx,%rbp,8), %rax
+               	movq	%rax, 232(%rsp)
+               	movl	8(%rax), %r13d
@@@@
+               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movaps	%xmm0, 64(%rsp)
@@@@
-               	je	0x4234d2 <kfun:#main(){}+0xcd2>
-               	leaq	271918(%rip), %rdi      # 0x465af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-44141(%rip), %rsi      # 0x418860 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43cb90 <CallInitGlobalPossiblyLock>
-               	movq	271815(%rip), %rdi      # 0x465aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	88(%rsp), %rsi
-               	callq	0x41b3b0 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 88(%rsp)
-               	callq	0x43a790 <(anonymous namespace)::theState()>
+               	je	0x42377a <kfun:#main(){}+0xd4a>
+               	leaq	273158(%rip), %rdi      # 0x466274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-44501(%rip), %rsi      # 0x4189a0 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43d980 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	273052(%rip), %rdi      # 0x466220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	104(%rsp), %rsi
+               	callq	0x41b550 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r12
+               	movq	%rax, 104(%rsp)
+               	callq	0x43b4d0 <(anonymous namespace)::theState()>
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
-               	je	0x423540 <kfun:#main(){}+0xd40>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x423540 <kfun:#main(){}+0xd40>
+               	testq	%rbp, %rbp
+               	je	0x4237f0 <kfun:#main(){}+0xdc0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4237f0 <kfun:#main(){}+0xdc0>
@@@@
-               	je	0x423540 <kfun:#main(){}+0xd40>
-               	movq	%rbx, %rdi
-               	callq	0x4271f0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4237f0 <kfun:#main(){}+0xdc0>
+               	movq	%rbp, %rdi
+               	callq	0x4278b0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 56(%rsp)
-               	je	0x423570 <kfun:#main(){}+0xd70>
-               	movq	%r12, %rax
+               	je	0x423810 <kfun:#main(){}+0xde0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x423579 <kfun:#main(){}+0xd79>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x423819 <kfun:#main(){}+0xde9>
+               	movl	%r13d, %eax

@@ -759,126 +779,126 @@
@@@[(3, 17), (21, 47), (50, 60), (61, 71), (72, 86), (92, 98), (100, 110), (111, 125), (131, 137), (166, 172), (173, 179), (183, 203)]@@@
-               	je	0x4236a0 <kfun:#main(){}+0xea0>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x4235b4 <kfun:#main(){}+0xdb4>
-               	testq	%rbx, %rbx
-               	jne	0x4235ee <kfun:#main(){}+0xdee>
-               	jmp	0x4236a0 <kfun:#main(){}+0xea0>
+               	je	0x423950 <kfun:#main(){}+0xf20>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x423854 <kfun:#main(){}+0xe24>
+               	testq	%rbp, %rbp
+               	jne	0x42388e <kfun:#main(){}+0xe5e>
+               	jmp	0x423950 <kfun:#main(){}+0xf20>
@@@@
-               	jne	0x4236a0 <kfun:#main(){}+0xea0>
-               	cmpl	%r12d, %esi
-               	je	0x4235e5 <kfun:#main(){}+0xde5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
-               	testq	%rbx, %rbx
-               	je	0x4236a0 <kfun:#main(){}+0xea0>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4235a0 <kfun:#main(){}+0xda0>
-               	movq	%rsi, %rax
+               	jne	0x423950 <kfun:#main(){}+0xf20>
+               	cmpl	%r13d, %esi
+               	je	0x423885 <kfun:#main(){}+0xe55>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x423950 <kfun:#main(){}+0xf20>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x423840 <kfun:#main(){}+0xe10>
@@@@
-               	je	0x4235af <kfun:#main(){}+0xdaf>
-               	jmp	0x4236a0 <kfun:#main(){}+0xea0>
-               	testq	%rbp, %rbp
-               	je	0x4236a0 <kfun:#main(){}+0xea0>
-               	movq	16(%rbx), %r15
+               	je	0x42384f <kfun:#main(){}+0xe1f>
+               	jmp	0x423950 <kfun:#main(){}+0xf20>
+               	testq	%rbx, %rbx
+               	je	0x423950 <kfun:#main(){}+0xf20>
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
-               	je	0x423650 <kfun:#main(){}+0xe50>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x423650 <kfun:#main(){}+0xe50>
+               	testq	%rbp, %rbp
+               	je	0x4238f0 <kfun:#main(){}+0xec0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x4238f0 <kfun:#main(){}+0xec0>
@@@@
-               	je	0x423650 <kfun:#main(){}+0xe50>
-               	movq	%rbx, %rdi
-               	callq	0x4271f0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x4238f0 <kfun:#main(){}+0xec0>
+               	movq	%rbp, %rdi
+               	callq	0x4278b0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
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
-               	je	0x4236a0 <kfun:#main(){}+0xea0>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4236a0 <kfun:#main(){}+0xea0>
+               	testq	%rbp, %rbp
+               	je	0x423950 <kfun:#main(){}+0xf20>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x423950 <kfun:#main(){}+0xf20>
@@@@
-               	je	0x4236a0 <kfun:#main(){}+0xea0>
-               	movq	%rbx, %rdi
-               	callq	0x4271f0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	je	0x423950 <kfun:#main(){}+0xf20>
+               	movq	%rbp, %rdi
+               	callq	0x4278b0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	movq	48(%rsp), %r14
-               	jbe	0x42376f <kfun:#main(){}+0xf6f>
+               	cmpl	%r15d, 8(%r12)
+               	movq	56(%rsp), %r14
+               	jbe	0x423a23 <kfun:#main(){}+0xff3>
@@@@
-               	movq	16(%r13,%rax,8), %rax
-               	movq	%rax, 224(%rsp)
-               	movq	72(%rsp), %rcx
+               	movq	16(%r12,%rax,8), %rax
+               	movq	%rax, 240(%rsp)
+               	movq	88(%rsp), %rcx
@@@@
-               	jae	0x423774 <kfun:#main(){}+0xf74>
-               	movq	56(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
-               	leaq	232(%rsp), %rsi
-               	callq	0x43dfc0 <Kotlin_Worker_consumeFuture>
-               	movq	136(%rsp), %r12
-               	cmpq	120(%rsp), %r15
-               	jne	0x423460 <kfun:#main(){}+0xc60>
-               	movq	360(%rsp), %rax
+               	movq	72(%rsp), %rbx
+               	jae	0x423a28 <kfun:#main(){}+0xff8>
+               	movq	144(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
+               	leaq	248(%rsp), %rsi
+               	callq	0x43ee30 <Kotlin_Worker_consumeFuture>
+               	cmpq	136(%rsp), %rbp
+               	jne	0x423700 <kfun:#main(){}+0xcd0>
+               	movq	376(%rsp), %rax

@@ -886,2408 +906,2408 @@
@@@[(12, 22), (62, 72), (170, 172)]@@@
-               	jne	0x42389a <kfun:#main(){}+0x109a>
-               	leaq	264(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43dfc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	jne	0x423b4e <kfun:#main(){}+0x111e>
+               	leaq	280(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43ee30 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	callq	0x43cd90 <ThrowException>
-               	leaq	248(%rsp), %rsi
-               	movl	%r12d, %edi
-               	callq	0x43dfc0 <Kotlin_Worker_consumeFuture>
-               	movq	48(%rsp), %rax
+               	callq	0x43db80 <ThrowException>
+               	leaq	264(%rsp), %rsi
+               	movl	%r13d, %edi
+               	callq	0x43ee30 <Kotlin_Worker_consumeFuture>
+               	movq	56(%rsp), %rax
@@@@
-               	nopw	(%rax,%rax)
+               	nopl	(%rax,%rax)
