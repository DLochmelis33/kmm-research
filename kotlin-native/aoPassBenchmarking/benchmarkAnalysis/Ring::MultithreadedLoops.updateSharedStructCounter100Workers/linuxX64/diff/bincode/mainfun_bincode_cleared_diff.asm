--- ../../benchmarkAnalysis/Ring::MultithreadedLoops.updateSharedStructCounter100Workers/linuxX64/baseline/bincode/mainfun_bincode.asm	2023-07-19 02:47:55.650642497 +0200
+++ ../../benchmarkAnalysis/Ring::MultithreadedLoops.updateSharedStructCounter100Workers/linuxX64/unordered/bincode/mainfun_bincode.asm	2023-07-19 02:59:47.650419470 +0200

@@ -10,22 +10,22 @@
@@@[(8, 14), (16, 18)]@@@
-               	movq	%rax, 48(%rsp)
-               	movq	-64(%rax), %rbp
-               	movq	288(%rbp), %rax
+               	movq	%rax, 40(%rsp)
+               	movq	-64(%rax), %rbx
+               	movq	288(%rbx), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%rbx)

@@ -33,109 +33,114 @@
@@@[(3, 5), (7, 9), (12, 20), (21, 24), (32, 36), (37, 49), (105, 106), (107, 110), (126, 131), (137, 141), (142, 152), (154, 156), (157, 158)]@@@
-               	movq	288(%rbp), %rax
+               	movq	288(%rbx), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%rbx)
@@@@
-               	movq	296(%rbp), %rdi
+               	movl	168(%rsp), %r13d
+               	testl	%r13d, %r13d
+               	js	0x422a8a <kfun:#main(){}+0xffa>
+               	movq	%rbx, 48(%rsp)
+               	movq	296(%rbx), %rdi
+               	leaq	31(,%r13,8), %rsi
+               	andq	$-8, %rsi
@@@@
-               	movl	$824, %esi              # imm = 0x338
-               	callq	0x4298c0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	callq	0x42a190 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
@@@@
-               	movl	$100, 24(%r15)
-               	movq	%rcx, 120(%rsp)
+               	movl	%r13d, 24(%r15)
+               	movq	%rcx, 128(%rsp)
@@@@
-               	xorl	%r13d, %r13d
-               	leaq	238403(%rip), %r12      # 0x45bd10 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
-               	movq	%rbp, 56(%rsp)
-               	cmpq	$100, %r13
-               	je	0x421b33 <kfun:#main(){}+0x2c3>
-               	nopl	(%rax)
-               	movzbl	279441(%rip), %eax      # 0x465d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%r12d, %r12d
+               	cmpq	%r12, %r13
+               	je	0x421d69 <kfun:#main(){}+0x2d9>
+               	nopl	(%rax,%rax)
+               	movzbl	280809(%rip), %eax      # 0x466500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movq	56(%rsp), %rbp
+               	movaps	%xmm0, 64(%rsp)
+               	movq	48(%rsp), %rbp
@@@@
-               	movq	%r12, 16(%rax)
-               	movq	%rcx, 104(%rsp)
+               	leaq	239402(%rip), %rdx      # 0x45c450 <ktypeglobal:kotlin.native.concurrent.Worker#internal>
+               	movq	%rdx, 16(%rax)
+               	movq	%rcx, 88(%rsp)
@@@@
-               	cmpq	%rax, %r13
-               	jae	0x4226af <kfun:#main(){}+0xe3f>
+               	cmpq	%rax, %r12
+               	jae	0x422955 <kfun:#main(){}+0xec5>
@@@@
-               	movq	%rcx, 32(%r15,%r13,8)
-               	addq	$1, %r13
-               	cmpq	$100, %r13
-               	jne	0x4219e0 <kfun:#main(){}+0x170>
-               	movq	120(%rsp), %rax
+               	movq	%rcx, 32(%r15,%r12,8)
+               	addq	$1, %r12
+               	cmpq	%r12, %r13
+               	jne	0x421c10 <kfun:#main(){}+0x180>
+               	movq	128(%rsp), %rax
@@@@
+               	movq	48(%rsp), %r12
+               	movq	%rax, 288(%r12)
@@@@
-               	movaps	%xmm0, 208(%rsp)

@@ -144,124 +149,134 @@
@@@[(3, 5), (7, 9), (11, 13), (25, 38), (39, 43), (45, 55), (56, 70), (77, 83), (84, 88), (89, 100), (102, 104), (120, 122), (124, 126), (129, 132), (141, 149), (151, 165), (171, 179), (180, 182), (184, 188), (191, 198)]@@@
+               	movaps	%xmm0, 208(%rsp)
+               	movq	288(%r12), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r12)
@@@@
-               	movq	296(%rbp), %rdi
+               	movq	296(%r12), %rdi
@@@@
-               	movl	168(%rsp), %ebx
-               	testl	%ebx, %ebx
-               	js	0x4227e4 <kfun:#main(){}+0xf74>
-               	movq	296(%rbp), %rdi
-               	leaq	31(,%rbx,8), %rsi
-               	andq	$-8, %rsi
+               	movl	168(%rsp), %r15d
+               	testl	%r15d, %r15d
+               	js	0x422ac0 <kfun:#main(){}+0x1030>
+               	movq	296(%r12), %rdi
+               	leaq	31(,%r15,8), %rsi
+               	movabsq	$68719476728, %rax      # imm = 0xFFFFFFFF8
+               	andq	%rax, %rsi
@@@@
-               	callq	0x4298c0 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
-               	movq	%rax, %r12
+               	callq	0x42a190 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	movq	%rax, %rbx
@@@@
-               	movups	%xmm0, 8(%r12)
-               	movq	$0, 24(%r12)
-               	leaq	232069(%rip), %rcx      # 0x45a6d0 <ktypeglobal:kotlin.Array#internal>
-               	movq	%rcx, 16(%r12)
-               	movl	%ebx, 24(%r12)
+               	movups	%xmm0, 8(%rbx)
+               	movq	$0, 24(%rbx)
+               	leaq	233324(%rip), %rcx      # 0x45ae10 <ktypeglobal:kotlin.Array#internal>
+               	movq	%rcx, 16(%rbx)
+               	movl	%r15d, 24(%rbx)
@@@@
-               	xorl	%r15d, %r15d
-               	movq	%r12, 144(%rsp)
-               	movq	%rbx, 368(%rsp)
-               	cmpq	%rbx, %r15
-               	je	0x422368 <kfun:#main(){}+0xaf8>
-               	nopl	(%rax)
-               	movb	278770(%rip), %al       # 0x465d78 <kotlin::mm::internal::gSuspensionRequested>
+               	xorl	%ebp, %ebp
+               	movq	%rbx, 128(%rsp)
+               	movq	%r15, 368(%rsp)
+               	cmpq	%r15, %rbp
+               	je	0x422610 <kfun:#main(){}+0xb80>
+               	nop
+               	movb	280106(%rip), %al       # 0x466500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	cmpq	%rcx, %r15
-               	jae	0x4226af <kfun:#main(){}+0xe3f>
-               	movq	16(%rax,%r15,8), %rax
+               	cmpq	%rcx, %rbp
+               	jae	0x422955 <kfun:#main(){}+0xec5>
+               	movq	16(%rax,%rbp,8), %rax
@@@@
-               	movslq	8(%rax), %r14
-               	movl	273990(%rip), %eax      # 0x464b00 <state_global$kotlin.native.concurrent.TransferMode>
+               	movl	8(%rax), %r14d
+               	movl	275318(%rip), %eax      # 0x465280 <state_global$kotlin.native.concurrent.TransferMode>
@@@@
-               	je	0x421cd2 <kfun:#main(){}+0x462>
-               	leaq	273978(%rip), %rdi      # 0x464b00 <state_global$kotlin.native.concurrent.TransferMode>
-               	leaq	-33469(%rip), %rsi      # 0x419a10 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
-               	callq	0x43baa0 <CallInitGlobalPossiblyLock>
-               	movq	273895(%rip), %rax      # 0x464ac0 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
+               	je	0x421f22 <kfun:#main(){}+0x492>
+               	leaq	275306(%rip), %rdi      # 0x465280 <state_global$kotlin.native.concurrent.TransferMode>
+               	leaq	-33677(%rip), %rsi      # 0x419b90 <kfun:kotlin.native.concurrent.TransferMode.$init_global#internal>
+               	callq	0x43c8b0 <CallInitGlobalPossiblyLock>
+               	movq	%rbp, 144(%rsp)
+               	movq	275215(%rip), %rax      # 0x465240 <kvar:kotlin.native.concurrent.TransferMode.$VALUES#internal>
@@@@
-               	movq	296(%rbp), %rdi
+               	movq	296(%r12), %rdi
@@@@
-               	movq	288(%rbp), %rax
+               	movq	288(%r12), %rax
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r12)
@@@@
-               	callq	0x418ee0 <WorkerLaunchpad>
+               	callq	0x419030 <WorkerLaunchpad>
+               	movslq	%r14d, %r15
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbp
-               	movl	$1, %ebx
-               	xchgl	%ebx, 328(%rbp)
+               	movq	40(%rsp), %rax
+               	movq	-64(%rax), %rbx
+               	movl	$1, %ebp
+               	xchgl	%ebp, 328(%rbx)
@@@@
-               	testq	%rbp, %rbp
-               	je	0x421df0 <kfun:#main(){}+0x580>
-               	addq	$328, %rbp              # imm = 0x148
-               	movl	%ebx, %eax
-               	xchgl	%eax, (%rbp)
-               	testl	%ebx, %ebx
-               	jne	0x421df0 <kfun:#main(){}+0x580>
+               	testq	%rbx, %rbx
+               	je	0x422050 <kfun:#main(){}+0x5c0>
+               	addq	$328, %rbx              # imm = 0x148
+               	movl	%ebp, %eax
+               	xchgl	%eax, (%rbx)
+               	testl	%ebp, %ebp
+               	jne	0x422050 <kfun:#main(){}+0x5c0>
@@@@
-               	je	0x421df0 <kfun:#main(){}+0x580>
-               	movq	%rbp, %rdi
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422050 <kfun:#main(){}+0x5c0>
+               	movq	%rbx, %rdi
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r14, %rax
+               	movq	%r15, %rax
@@@@
-               	je	0x421e10 <kfun:#main(){}+0x5a0>
-               	movq	%r14, %rax
+               	je	0x422090 <kfun:#main(){}+0x600>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x421e19 <kfun:#main(){}+0x5a9>
+               	movq	144(%r13), %rax
+               	movq	(%rax,%rcx,8), %rax
+               	testq	%rax, %rax
+               	jne	0x4220ad <kfun:#main(){}+0x61d>
+               	jmp	0x4221c0 <kfun:#main(){}+0x730>
+               	nopl	(%rax,%rax)

@@ -269,52 +284,51 @@
@@@[(3, 6), (11, 23), (26, 40), (43, 55)]@@@
-               	movq	%r15, 120(%rsp)
-               	je	0x421f40 <kfun:#main(){}+0x6d0>
+               	je	0x4221c0 <kfun:#main(){}+0x730>
@@@@
-               	jne	0x421e9f <kfun:#main(){}+0x62f>
-               	jmp	0x421f40 <kfun:#main(){}+0x6d0>
-               	nopl	(%rax)
-               	movl	%esi, %eax
-               	xorl	%edx, %edx
-               	divl	%edi
-               	cmpq	%rcx, %rdx
-               	jne	0x421f40 <kfun:#main(){}+0x6d0>
-               	cmpl	%r14d, %esi
-               	je	0x421e96 <kfun:#main(){}+0x626>
+               	jne	0x42211d <kfun:#main(){}+0x68d>
+               	jmp	0x4221c0 <kfun:#main(){}+0x730>
@@@@
-               	je	0x421f40 <kfun:#main(){}+0x6d0>
-               	movslq	8(%rbp), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x421e50 <kfun:#main(){}+0x5e0>
-               	movq	%rsi, %rax
+               	je	0x4221c0 <kfun:#main(){}+0x730>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422100 <kfun:#main(){}+0x670>
@@@@
-               	je	0x421e5f <kfun:#main(){}+0x5ef>
-               	jmp	0x421f40 <kfun:#main(){}+0x6d0>
+               	je	0x42210f <kfun:#main(){}+0x67f>
+               	jmp	0x4221c0 <kfun:#main(){}+0x730>
+               	nopl	(%rax)
+               	movl	%esi, %eax
+               	xorl	%edx, %edx
+               	divl	%edi
+               	cmpq	%rcx, %rdx
+               	jne	0x4221c0 <kfun:#main(){}+0x730>
+               	cmpl	%r14d, %esi
+               	jne	0x4220c0 <kfun:#main(){}+0x630>

@@ -326,23 +340,22 @@
@@@[(20, 25)]@@@
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	jmp	0x421f4b <kfun:#main(){}+0x6db>
-               	nop
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	jmp	0x4221cb <kfun:#main(){}+0x73b>

@@ -367,65 +380,63 @@
@@@[(15, 22), (25, 39), (42, 53), (57, 60), (81, 84)]@@@
-               	movl	%ecx, %eax
-               	xorl	%edx, %edx
-               	divl	%edi
-               	cmpq	%rbp, %rdx
-               	jne	0x421ffc <kfun:#main(){}+0x78c>
-               	cmpl	%ecx, %r8d
-               	je	0x421fea <kfun:#main(){}+0x77a>
@@@@
-               	je	0x421ffc <kfun:#main(){}+0x78c>
-               	movslq	8(%rbx), %rcx
-               	movq	%rcx, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x421fb0 <kfun:#main(){}+0x740>
-               	movq	%rcx, %rax
+               	je	0x42227e <kfun:#main(){}+0x7ee>
+               	movl	8(%rbx), %ecx
+               	movslq	%ecx, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x422260 <kfun:#main(){}+0x7d0>
@@@@
-               	je	0x421fbb <kfun:#main(){}+0x74b>
-               	jmp	0x421ffc <kfun:#main(){}+0x78c>
+               	je	0x42226b <kfun:#main(){}+0x7db>
+               	jmp	0x42227e <kfun:#main(){}+0x7ee>
+               	movl	%ecx, %eax
+               	xorl	%edx, %edx
+               	divl	%edi
+               	cmpq	%rbp, %rdx
+               	jne	0x42227e <kfun:#main(){}+0x7ee>
+               	cmpl	%ecx, %r8d
+               	jne	0x422230 <kfun:#main(){}+0x7a0>
@@@@
-               	movl	72(%rsp), %edi
-               	jmp	0x4221e3 <kfun:#main(){}+0x973>
+               	jmp	0x42247f <kfun:#main(){}+0x9ef>
@@@@
-               	movl	72(%rsp), %edi
-               	movq	128(%rsp), %rbp
+               	movq	136(%rsp), %rbp

@@ -434,254 +445,264 @@
@@@[(3, 7), (8, 25), (26, 28), (29, 48), (50, 53), (57, 82), (108, 111), (122, 128), (131, 132), (136, 141), (143, 146), (154, 164), (165, 180), (215, 218), (223, 226), (227, 228), (229, 238), (239, 243), (256, 283), (285, 291), (292, 304), (305, 312), (313, 315), (316, 317), (318, 327), (333, 354), (355, 363), (365, 379), (385, 393), (394, 396), (398, 403), (406, 411)]@@@
-               	movl	68(%rsp), %r8d
-               	movq	104(%r13), %rbp
+               	movl	60(%rsp), %r8d
+               	movq	104(%r13), %rbx
@@@@
-               	testq	%rbp, %rbp
-               	je	0x422114 <kfun:#main(){}+0x8a4>
-               	leaq	104(%r13), %rsi
-               	xorl	%edi, %edi
-               	jmp	0x4220d6 <kfun:#main(){}+0x866>
-               	nop
-               	xorl	%edx, %edx
-               	divl	%r14d
-               	movq	(%r12,%rdx,8), %rax
-               	testq	%rax, %rax
-               	je	0x4220fb <kfun:#main(){}+0x88b>
+               	testq	%rbx, %rbx
+               	je	0x4223a7 <kfun:#main(){}+0x917>
+               	leaq	104(%r13), %rdi
+               	xorl	%ebp, %ebp
+               	jmp	0x422348 <kfun:#main(){}+0x8b8>
+               	nopl	(%rax)
@@@@
-               	movq	%rax, (%rcx)
+               	movq	%rax, (%rsi)
@@@@
-               	movq	%rcx, (%rax)
-               	movq	%rdi, %rdx
-               	movq	%rdx, %rdi
-               	testq	%rbp, %rbp
-               	je	0x422114 <kfun:#main(){}+0x8a4>
-               	movq	%rbp, %rcx
-               	movq	(%rbp), %rbp
-               	movslq	8(%rcx), %rax
-               	movq	%rax, %rdx
+               	movq	%rsi, (%rax)
+               	movq	%rbp, %rdx
+               	movq	%rdx, %rbp
+               	testq	%rbx, %rbx
+               	je	0x4223a7 <kfun:#main(){}+0x917>
+               	movq	%rbx, %rsi
+               	movq	(%rbx), %rbx
+               	movl	8(%rsi), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x4220b0 <kfun:#main(){}+0x840>
+               	je	0x422380 <kfun:#main(){}+0x8f0>
+               	movq	%rcx, %rax
@@@@
-               	jne	0x4220be <kfun:#main(){}+0x84e>
-               	movq	(%rsi), %rax
-               	movq	%rax, (%rcx)
-               	movq	%rcx, (%rsi)
-               	movq	%rsi, (%r12,%rdx,8)
-               	cmpq	$0, (%rcx)
-               	je	0x4220ce <kfun:#main(){}+0x85e>
-               	movq	%rcx, (%r12,%rdi,8)
-               	jmp	0x4220ce <kfun:#main(){}+0x85e>
+               	jne	0x422330 <kfun:#main(){}+0x8a0>
+               	jmp	0x42238e <kfun:#main(){}+0x8fe>
+               	nop
+               	xorl	%edx, %edx
+               	divl	%r14d
+               	movq	(%r12,%rdx,8), %rax
+               	testq	%rax, %rax
+               	jne	0x422330 <kfun:#main(){}+0x8a0>
+               	movq	(%rdi), %rax
+               	movq	%rax, (%rsi)
+               	movq	%rsi, (%rdi)
+               	movq	%rdi, (%r12,%rdx,8)
+               	cmpq	$0, (%rsi)
+               	je	0x422340 <kfun:#main(){}+0x8b0>
+               	movq	%rsi, (%r12,%rbp,8)
+               	jmp	0x422340 <kfun:#main(){}+0x8b0>
@@@@
-               	movl	72(%rsp), %edi
-               	movq	128(%rsp), %rbp
+               	movq	136(%rsp), %rbp
@@@@
-               	jmp	0x4221d6 <kfun:#main(){}+0x966>
-               	movq	%r13, %rcx
-               	addq	$104, %rcx
+               	jmp	0x42246e <kfun:#main(){}+0x9de>
+               	movq	%r13, %rdi
+               	addq	$104, %rdi
@@@@
+               	movq	(%rbp), %rax
@@@@
-               	movslq	8(%rax), %rax
-               	movq	%rax, %rdx
+               	movl	8(%rax), %eax
+               	movslq	%eax, %rcx
+               	movq	%rcx, %rdx
@@@@
-               	je	0x4221c5 <kfun:#main(){}+0x955>
+               	je	0x42245d <kfun:#main(){}+0x9cd>
+               	movq	%rcx, %rax
@@@@
-               	movq	%rcx, (%r12,%rsi,8)
-               	addq	$1, 112(%r13)
-               	movq	144(%rsp), %r12
+               	movq	%rdi, (%r12,%rsi,8)
+               	movq	112(%r13), %rax
+               	addq	$1, %rax
+               	movq	%rax, 112(%r13)
+               	movq	48(%rsp), %r12
+               	movl	120(%rsp), %ecx
+               	movq	112(%rsp), %rdx
@@@@
-               	movl	$2, 80(%rsp)
-               	leaq	-2566(%rip), %rax       # 0x4217f0 <kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal>
-               	movq	%rax, 88(%rsp)
-               	movq	136(%rsp), %rax
-               	movq	%rax, 96(%rsp)
-               	movq	%r15, 104(%rsp)
-               	movl	%edi, 112(%rsp)
-               	movq	112(%rsp), %rax
+               	movl	$2, 64(%rsp)
+               	leaq	-2715(%rip), %rax       # 0x421a00 <kfun:MultithreadedLoopsBenchmark.$<bridge-UNNN>runUpdateSharedStructCounterWorkers$lambda$1#static(MultithreadedLoopsBenchmark.Counter){}#internal>
+               	movq	%rax, 72(%rsp)
+               	movq	%rdx, 80(%rsp)
+               	movq	%r15, 88(%rsp)
+               	movl	%ecx, 96(%rsp)
+               	movq	96(%rsp), %rax
@@@@
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nopl	(%rax)
@@@@
-               	movq	56(%rsp), %rbp
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r12)
@@@@
-               	movaps	%xmm0, 96(%rsp)
@@@@
-               	movq	288(%rbp), %rax
-               	movq	%rax, 88(%rsp)
-               	leaq	80(%rsp), %rax
-               	movq	%rax, 288(%rbp)
+               	movaps	%xmm0, 64(%rsp)
+               	movq	288(%r12), %rax
+               	movq	%rax, 72(%rsp)
+               	leaq	64(%rsp), %rax
+               	movq	%rax, 288(%r12)
@@@@
-               	movq	%rax, 96(%rsp)
-               	movq	296(%rbp), %rdi
+               	movq	%rax, 80(%rsp)
+               	movq	296(%r12), %rdi
@@@@
-               	movq	88(%rsp), %rax
-               	movq	%rax, 288(%rbp)
-               	movl	24(%r12), %eax
-               	movq	120(%rsp), %r15
-               	cmpq	%rax, %r15
-               	jae	0x4226af <kfun:#main(){}+0xe3f>
-               	movq	16(%r12), %rax
-               	movq	%rcx, 32(%r12,%r15,8)
-               	addq	$1, %r15
-               	movq	368(%rsp), %rbx
-               	cmpq	%rbx, %r15
-               	jne	0x421c80 <kfun:#main(){}+0x410>
-               	jmp	0x422368 <kfun:#main(){}+0xaf8>
+               	movq	72(%rsp), %rax
+               	movq	%rax, 288(%r12)
+               	movq	128(%rsp), %rbx
+               	movl	24(%rbx), %eax
+               	movq	144(%rsp), %rbp
+               	cmpq	%rax, %rbp
+               	jae	0x422955 <kfun:#main(){}+0xec5>
+               	movq	16(%rbx), %rax
+               	movq	%rcx, 32(%rbx,%rbp,8)
+               	addq	$1, %rbp
+               	movq	368(%rsp), %r15
+               	cmpq	%r15, %rbp
+               	jne	0x421ed0 <kfun:#main(){}+0x440>
+               	jmp	0x422610 <kfun:#main(){}+0xb80>
@@@@
-               	jmp	0x422089 <kfun:#main(){}+0x819>
-               	movl	24(%r12), %eax
-               	xorl	%r15d, %r15d
+               	jmp	0x422307 <kfun:#main(){}+0x877>
+               	movl	24(%rbx), %eax
+               	xorl	%ebp, %ebp
@@@@
-               	cmovsl	%r15d, %eax
-               	movq	%rax, 72(%rsp)
-               	cmpq	72(%rsp), %r15
-               	je	0x42268e <kfun:#main(){}+0xe1e>
-               	nopw	%cs:(%rax,%rax)
-               	movb	276962(%rip), %al       # 0x465d78 <kotlin::mm::internal::gSuspensionRequested>
+               	cmovsl	%ebp, %eax
+               	movq	%rax, 120(%rsp)
+               	cmpq	120(%rsp), %rbp
+               	je	0x422933 <kfun:#main(){}+0xea3>
+               	nopw	(%rax,%rax)
+               	movb	278218(%rip), %al       # 0x466500 <kotlin::mm::internal::gSuspensionRequested>
@@@@
-               	je	0x42239f <kfun:#main(){}+0xb2f>
-               	callq	0x4262d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
-               	movq	32(%r12,%r15,8), %rax
+               	je	0x42263f <kfun:#main(){}+0xbaf>
+               	callq	0x4269d0 <kotlin::mm::SuspendIfRequestedSlowPath()>
+               	movq	%rbp, 144(%rsp)
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
+               	movq	288(%r12), %rax
+               	movq	%rax, 72(%rsp)
+               	leaq	64(%rsp), %rax
+               	movq	%rax, 288(%r12)
@@@@
-               	je	0x422402 <kfun:#main(){}+0xb92>
-               	leaq	272126(%rip), %rdi      # 0x464af4 <state_global$kotlin.native.concurrent.FutureState>
-               	leaq	-39805(%rip), %rsi      # 0x418880 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
-               	callq	0x43baa0 <CallInitGlobalPossiblyLock>
-               	movq	272023(%rip), %rdi      # 0x464aa0 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
-               	leaq	104(%rsp), %rsi
-               	callq	0x41b3d0 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
-               	movq	%rax, %r13
-               	movq	%rax, 104(%rsp)
-               	callq	0x4396a0 <(anonymous namespace)::theState()>
+               	je	0x4226ac <kfun:#main(){}+0xc1c>
+               	leaq	273364(%rip), %rdi      # 0x465274 <state_global$kotlin.native.concurrent.FutureState>
+               	leaq	-40167(%rip), %rsi      # 0x4189c0 <kfun:kotlin.native.concurrent.FutureState.$init_global#internal>
+               	callq	0x43c8b0 <CallInitGlobalPossiblyLock>
+               	movslq	%r13d, %r15
+               	movq	273258(%rip), %rdi      # 0x465220 <kvar:kotlin.native.concurrent.FutureState.$VALUES#internal>
+               	leaq	88(%rsp), %rsi
+               	callq	0x41b570 <kfun:kotlin.native.internal#valuesForEnum(kotlin.Array<0:0>){0§<kotlin.Enum<0:0>>}kotlin.Array<0:0>>
+               	movq	%rax, %r12
+               	movq	%rax, 88(%rsp)
+               	callq	0x43a400 <(anonymous namespace)::theState()>
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
+               	movq	40(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422470 <kfun:#main(){}+0xc00>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422470 <kfun:#main(){}+0xc00>
+               	testq	%rbp, %rbp
+               	je	0x422720 <kfun:#main(){}+0xc90>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422720 <kfun:#main(){}+0xc90>
@@@@
-               	je	0x422470 <kfun:#main(){}+0xc00>
-               	movq	%rbx, %rdi
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422720 <kfun:#main(){}+0xc90>
+               	movq	%rbp, %rdi
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	%r12, %rax
+               	movq	%r15, %rax
@@@@
-               	movq	%r15, 120(%rsp)
-               	je	0x4224a0 <kfun:#main(){}+0xc30>
-               	movq	%r12, %rax
+               	je	0x422740 <kfun:#main(){}+0xcb0>
+               	movq	%r15, %rax
@@@@
-               	jmp	0x4224a9 <kfun:#main(){}+0xc39>
-               	nopl	(%rax)
-               	movl	%r12d, %eax
+               	jmp	0x422749 <kfun:#main(){}+0xcb9>
+               	movl	%r13d, %eax

@@ -689,125 +710,125 @@
@@@[(3, 33), (37, 45), (46, 63), (64, 74), (75, 89), (95, 103), (104, 114), (115, 129), (135, 144), (170, 174), (175, 177), (178, 184), (187, 195), (196, 204), (205, 207)]@@@
-               	je	0x4225e0 <kfun:#main(){}+0xd70>
-               	movq	(%rax), %rbx
-               	cmpl	%r12d, 8(%rbx)
-               	jne	0x4224e4 <kfun:#main(){}+0xc74>
-               	testq	%rbx, %rbx
-               	jne	0x42251e <kfun:#main(){}+0xcae>
-               	jmp	0x4225e0 <kfun:#main(){}+0xd70>
+               	je	0x422880 <kfun:#main(){}+0xdf0>
+               	movq	(%rax), %rbp
+               	cmpl	%r13d, 8(%rbp)
+               	jne	0x422770 <kfun:#main(){}+0xce0>
+               	testq	%rbp, %rbp
+               	jne	0x4227cd <kfun:#main(){}+0xd3d>
+               	jmp	0x422880 <kfun:#main(){}+0xdf0>
+               	movq	%rbp, %rbx
+               	movq	(%rbp), %rbp
+               	testq	%rbp, %rbp
+               	je	0x422880 <kfun:#main(){}+0xdf0>
+               	movl	8(%rbp), %esi
+               	movslq	%esi, %rax
+               	movq	%rax, %rdx
+               	orq	%rdi, %rdx
+               	shrq	$32, %rdx
+               	je	0x4227b0 <kfun:#main(){}+0xd20>
+               	xorl	%edx, %edx
+               	divq	%rdi
+               	cmpq	%rcx, %rdx
+               	je	0x4227bf <kfun:#main(){}+0xd2f>
+               	jmp	0x422880 <kfun:#main(){}+0xdf0>
+               	nopl	(%rax)
@@@@
-               	jne	0x4225e0 <kfun:#main(){}+0xd70>
-               	cmpl	%r12d, %esi
-               	je	0x422515 <kfun:#main(){}+0xca5>
-               	movq	%rbx, %rbp
-               	movq	(%rbx), %rbx
+               	jne	0x422880 <kfun:#main(){}+0xdf0>
+               	cmpl	%r13d, %esi
+               	jne	0x422770 <kfun:#main(){}+0xce0>
@@@@
-               	je	0x4225e0 <kfun:#main(){}+0xd70>
-               	movslq	8(%rbx), %rsi
-               	movq	%rsi, %rax
-               	orq	%rdi, %rax
-               	shrq	$32, %rax
-               	je	0x4224d0 <kfun:#main(){}+0xc60>
-               	movq	%rsi, %rax
-               	xorl	%edx, %edx
-               	divq	%rdi
-               	cmpq	%rcx, %rdx
-               	je	0x4224df <kfun:#main(){}+0xc6f>
-               	jmp	0x4225e0 <kfun:#main(){}+0xd70>
-               	testq	%rbp, %rbp
-               	je	0x4225e0 <kfun:#main(){}+0xd70>
-               	movq	16(%rbx), %r15
+               	je	0x422880 <kfun:#main(){}+0xdf0>
+               	movq	16(%rbp), %r15
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	%rdi, 136(%rsp)
+               	movq	40(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	%rdi, 112(%rsp)
@@@@
-               	testq	%rbx, %rbx
-               	je	0x422580 <kfun:#main(){}+0xd10>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x422580 <kfun:#main(){}+0xd10>
+               	testq	%rbp, %rbp
+               	je	0x422830 <kfun:#main(){}+0xda0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422830 <kfun:#main(){}+0xda0>
@@@@
-               	je	0x422580 <kfun:#main(){}+0xd10>
-               	movq	%rbx, %rdi
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nopl	(%rax)
+               	je	0x422830 <kfun:#main(){}+0xda0>
+               	movq	%rbp, %rdi
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	nop
@@@@
-               	movq	48(%rsp), %rax
-               	movq	-64(%rax), %rbx
-               	movl	$1, %ebp
-               	xchgl	%ebp, 328(%rbx)
-               	movq	136(%rsp), %rdi
+               	movq	40(%rsp), %rax
+               	movq	-64(%rax), %rbp
+               	movl	$1, %ebx
+               	xchgl	%ebx, 328(%rbp)
+               	movq	112(%rsp), %rdi
@@@@
-               	testq	%rbx, %rbx
-               	je	0x4225e0 <kfun:#main(){}+0xd70>
-               	addq	$328, %rbx              # imm = 0x148
-               	movl	%ebp, %eax
-               	xchgl	%eax, (%rbx)
-               	testl	%ebp, %ebp
-               	jne	0x4225e0 <kfun:#main(){}+0xd70>
+               	testq	%rbp, %rbp
+               	je	0x422880 <kfun:#main(){}+0xdf0>
+               	addq	$328, %rbp              # imm = 0x148
+               	movl	%ebx, %eax
+               	xchgl	%eax, (%rbp)
+               	testl	%ebx, %ebx
+               	jne	0x422880 <kfun:#main(){}+0xdf0>
@@@@
-               	je	0x4225e0 <kfun:#main(){}+0xd70>
-               	movq	%rbx, %rdi
-               	callq	0x426100 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
-               	nop
-               	movq	48(%rsp), %rax
+               	je	0x422880 <kfun:#main(){}+0xdf0>
+               	movq	%rbp, %rdi
+               	callq	0x4267e0 <kotlin::mm::ThreadSuspensionData::suspendIfRequestedSlowPath()>
+               	movq	40(%rsp), %rax
@@@@
-               	cmpl	%r15d, 8(%r13)
-               	jbe	0x4226af <kfun:#main(){}+0xe3f>
+               	cmpl	%r15d, 8(%r12)
+               	jbe	0x422955 <kfun:#main(){}+0xec5>
@@@@
-               	movq	16(%r13,%rax,8), %rax
+               	movq	16(%r12,%rax,8), %rax
@@@@
-               	movq	88(%rsp), %rcx
-               	movq	56(%rsp), %rbp
-               	movq	%rcx, 288(%rbp)
+               	movq	72(%rsp), %rcx
+               	movq	48(%rsp), %r12
+               	movq	%rcx, 288(%r12)
@@@@
-               	jae	0x4226b4 <kfun:#main(){}+0xe44>
-               	movq	120(%rsp), %r15
-               	addq	$1, %r15
-               	movl	%r12d, %edi
+               	jae	0x42295a <kfun:#main(){}+0xeca>
+               	movq	144(%rsp), %rbp
+               	addq	$1, %rbp
+               	movl	%r13d, %edi
@@@@
-               	callq	0x43ceb0 <Kotlin_Worker_consumeFuture>
-               	movq	144(%rsp), %r12
-               	cmpq	72(%rsp), %r15
-               	jne	0x422390 <kfun:#main(){}+0xb20>
+               	callq	0x43dd40 <Kotlin_Worker_consumeFuture>
+               	movq	128(%rsp), %rbx
+               	cmpq	120(%rsp), %rbp
+               	jne	0x422630 <kfun:#main(){}+0xba0>
@@@@
-               	movq	%rax, 288(%rbp)
+               	movq	%rax, 288(%r12)

@@ -816,2398 +837,2408 @@
@@@[(15, 21), (62, 68), (85, 93), (99, 111), (160, 162)]@@@
-               	movl	%r12d, %edi
-               	callq	0x43ceb0 <Kotlin_Worker_consumeFuture>
-               	movq	56(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43dd40 <Kotlin_Worker_consumeFuture>
+               	movq	48(%rsp), %rax
@@@@
-               	movl	%r12d, %edi
-               	callq	0x43ceb0 <Kotlin_Worker_consumeFuture>
-               	movq	56(%rsp), %rax
+               	movl	%r13d, %edi
+               	callq	0x43dd40 <Kotlin_Worker_consumeFuture>
+               	movq	48(%rsp), %rax
@@@@
-               	callq	0x43bc80 <ThrowException>
-               	callq	0x41b330 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
-               	callq	0x418d40 <ThrowWorkerAlreadyTerminated>
-               	movq	296(%rbp), %rdi
+               	callq	0x43ca90 <ThrowException>
+               	callq	0x41b4d0 <kfun:kotlin.native.internal#ThrowNoWhenBranchMatchedException(){}kotlin.Nothing>
+               	callq	0x418e90 <ThrowWorkerAlreadyTerminated>
+               	movq	296(%rbx), %rdi
@@@@
-               	leaq	230612(%rip), %rcx      # 0x45ace0 <ktypeglobal:kotlin.IllegalArgumentException#internal>
+               	leaq	231790(%rip), %rcx      # 0x45b420 <ktypeglobal:kotlin.IllegalArgumentException#internal>
+               	movq	%rcx, 16(%rax)
+               	movq	%rbx, 232(%rsp)
+               	jmp	0x422af5 <kfun:#main(){}+0x1065>
+               	movq	296(%r12), %rdi
+               	addq	$112, %rdi
+               	movl	$56, %esi
+               	callq	0x42a190 <kotlin::mm::internal::ObjectFactoryStorage<8ul, kotlin::gc::AllocatorWithGC<kotlin::gc::Allocator, kotlin::gc::ConcurrentMarkAndSweep::ThreadData> >::Producer::Insert(unsigned long)>
+               	leaq	16(%rax), %rbx
+               	movq	$0, 8(%rax)
+               	leaq	231735(%rip), %rcx      # 0x45b420 <ktypeglobal:kotlin.IllegalArgumentException#internal>
@@@@
-               	nopw	%cs:(%rax,%rax)
+               	nop
